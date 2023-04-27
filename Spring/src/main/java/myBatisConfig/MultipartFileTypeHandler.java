package myBatisConfig;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MultipartFileTypeHandler extends BaseTypeHandler<MultipartFile> {

    @Override
    public void setNonNullParameter(PreparedStatement ps, int i, MultipartFile parameter, JdbcType jdbcType) throws SQLException {
        try {
            ps.setBytes(i, parameter.getBytes());
        } catch (IOException e) {
            throw new SQLException("Error converting MultipartFile to byte[]", e);
        }
    }

    @Override
    public MultipartFile getNullableResult(ResultSet rs, String columnName) throws SQLException {
        // Not implemented since MultipartFile retrieval from ResultSet is not required
        return null;
    }

    @Override
    public MultipartFile getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
        // Not implemented since MultipartFile retrieval from ResultSet is not required
        return null;
    }

    @Override
    public MultipartFile getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
        // Not implemented since MultipartFile retrieval from CallableStatement is not required
        return null;
    }
}

