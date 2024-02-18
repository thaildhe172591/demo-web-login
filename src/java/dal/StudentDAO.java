package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Student;
import model.Users;

public class StudentDAO extends DBContext {

    //doc tat ca cac ban ghi tu StudentDB
    public List<Student> getAll() {
        List<Student> list = new ArrayList<>();
        String sql = "select * from Student";
        //chay lenh truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Student s = new Student(rs.getString("rollNo"), rs.getString("name"), rs.getFloat("mark"));
                list.add(s);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void insert(Student std) {
        String sql = "INSERT INTO [dbo].[Student]\n"
                + "           ([RollNo]\n"
                + "           ,[Name]\n"
                + "           ,[mark])\n"
                + "     VALUES(?,?,?)";
        //chay lenh truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, std.getRollNo());
            st.setString(2, std.getName());
            st.setFloat(3, std.getMark());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void delete(String rollNo) {
        String sql = "DELETE FROM [dbo].[Student]\n"
                + "      WHERE RollNo = ?";
        //chay lenh truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, rollNo);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public void edit(Student std) {
        String sql = "UPDATE Student\n"
                + "   SET [Name] = ?\n"
                + "      ,[mark] = ?\n"
                + " WHERE RollNo = ?";
        //chay lenh truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, std.getName());
            st.setFloat(2, std.getMark());
            st.setString(3, std.getRollNo());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Student getStdByRollNo(String rollNo) {
        String sql = "select * from Student where RollNo = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, rollNo);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Student foundedStd = new Student(rs.getString("rollNo"), rs.getString("name"), rs.getFloat("mark"));
                return foundedStd;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Users checkAccount(String username, String password) {
        String sql = "select * from Users where Username = ? and Password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new Users(username, password, rs.getString("email"), rs.getString("name"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean existedUsers(String username) {
        String sql = "select * from Users where Username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void register(Users user) {
        String sql = "insert into Users values(?,?,?,?)";
        //chay lenh truy van
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user.getName());
            st.setString(2, user.getUsername());
            st.setString(3, user.getPassword());
            st.setString(4, user.getEmail());                 
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
//    public Student getByID(String id) {
//        Student foundedStd = null;
//        String sql = "select * from Student where RollNo = '" + id + "'";
//        try {
//            PreparedStatement st = connection.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            if (rs.next()) {
//                foundedStd = new Student(rs.getString("rollNo"), rs.getString("name"), rs.getFloat("mark"));
//            }
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//        return foundedStd;
//    }

    public static void main(String[] args) {
        StudentDAO sd = new StudentDAO();
        List<Student> list = sd.getAll();
        System.out.println(list.get(0).getName());
//        System.out.println(li.get(1).getName());
//        System.out.println(li.get(2).getName());
//        System.out.println(li.get(3).getName());
//        System.out.println(li.get(4).getName());
//        System.out.println(li.get(5).getName());s
    }
}

//StudentDAO studentDao = new StudentDAO();
//Student student = studentDao.getByID("A2");
//request.setAttribute("student", student);
//RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
//dispatcher.forward(request, response);
//
//<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
//<html>
//<body>
//<c:if test="${student != null}">
//<table>
//<tr>
//<td>${student.rollNo}</td>
//<td>${student.name}</td>
//<td>${student.mark}</td>
//</tr>
//</table>
//</c:if>
//</body>
//</html>
