package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import util.DbUtil;

public class EmployeeDao {

    static PreparedStatement ps;
    static ResultSet rs;
    static String sql;

    public static List<Employee> getAllEmployee() {

        List<Employee> employees = new ArrayList<>();
        sql = "select * from emp";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {

                Employee s = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("contact"),
                        rs.getString("gender"),
                         rs.getFloat("salary")                
                );

                employees.add(s);

            }
            rs.close();
            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return employees;
    }

    public static int saveEmployee(Employee s) {

        int status = 0;
        sql = "insert into emp(name,email,contact,gender,salary) values(?,?,?,?,?)";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getContact());
            ps.setString(4, s.getGender());
            ps.setFloat(5, s.getSalary());

            status = ps.executeUpdate();

            System.out.println(status);

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

    public static void deleteEmployee(int id) {

        sql = "delete from emp where id=?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static Employee getById(int id) {

        Employee s = null;
        sql = "select * from emp where id = ?";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                s = new Employee(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getString("contact"),
                        rs.getString("gender"),
                        rs.getFloat("salary")
                );

            }

            rs.close();
            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public static int updateEmployee(Employee s) {

        int status = 0;
        sql = "update emp set name = ?, email= ?, contact=?, gender=?, salary=? where id=? ";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            ps.setString(1, s.getName());
            ps.setString(2, s.getEmail());
            ps.setString(3, s.getContact());
            ps.setString(4, s.getGender());

            ps.setFloat(5, s.getSalary());
            ps.setInt(6, s.getId());

            status = ps.executeUpdate();

            System.out.println(status);

            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmployeeDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }

}
