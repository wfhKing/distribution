package com.nf147.ssm.dao;

import com.nf147.ssm.entity.Range;
import java.util.List;

public interface RangeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table range
     *
     * @mbg.generated
     */
    int insert(Range record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table range
     *
     * @mbg.generated
     */
    List<Range> selectAll();
}