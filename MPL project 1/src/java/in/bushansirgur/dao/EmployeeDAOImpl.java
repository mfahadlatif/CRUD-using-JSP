package in.bushansirgur.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import in.bushansirgur.entity.Employee;
import in.bushansirgur.util.DBConnectionUtil;
public class EmployeeDAOImpl implements EmployeeDAO {
	
	Connection connection = null;
	ResultSet resultSet = null;
	Statement statement = null;
	PreparedStatement preparedStatement = null;
	
	@Override
	public List<Employee> get() {
		
		List<Employee> list = null;
		Employee employee = null;
		
		try {
			
			list = new ArrayList<Employee>();
			String sql = "SELECT * FROM doctor";
			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				employee = new Employee();
				employee.setId(resultSet.getInt("id"));
				employee.setName(resultSet.getString("name"));
				employee.setAge(resultSet.getInt("age"));
                                employee.setQualification(resultSet.getString("qualification"));
				employee.setAddress(resultSet.getString("address"));
                                employee.setEmail(resultSet.getString("email"));
                                employee.setPhone(resultSet.getString("phone"));
				list.add(employee);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Employee get(int id) {
		Employee employee = null;
		try {
			employee = new Employee();
			String sql = "SELECT * FROM doctor where id="+id;
			connection = DBConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			if(resultSet.next()) {
				employee.setId(resultSet.getInt("id"));
				employee.setName(resultSet.getString("name"));
				employee.setAge(resultSet.getInt("age"));
                                employee.setQualification(resultSet.getString("qualification"));
				employee.setAddress(resultSet.getString("address"));
                                employee.setEmail(resultSet.getString("email"));
                                employee.setPhone(resultSet.getString("phone"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return employee;
	}

	@Override
	public boolean save(Employee e) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO doctor( name, age, qualification, address, phone, email)VALUES"
					+ "('"+e.getName()+"', '"+e.getAge()+"', '"+e.getQualification()+"', '"+e.getAddress()+"', '"+e.getEmail()+"', '"+e.getEmail()+"')";
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean delete(int id) {
		boolean flag = false;
		try {
			String sql = "DELETE FROM doctor where id="+id;
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

	@Override
	public boolean update(Employee employee) {
		boolean flag = false;
		try {
			String sql = "UPDATE doctor SET id = '"+employee.getId()+"', "
					+ "name = '"+employee.getName()+"', age = '"+employee.getAge()+"', qualification = '"+employee.getQualification()+"', address = '"+employee.getAddress()+"', email = '"+employee.getEmail()+"', phone = '"+employee.getPhone()+"' where id="+employee.getId();
			connection = DBConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

}
