package com.nf147.ssm.dao;

import com.nf147.ssm.entity.Handover;
import java.util.List;

public interface HandoverMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table handover
     *
     * @mbg.generated
     */
    int insert(Handover record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table handover
     *
     * @mbg.generated
     */
    List<Handover> selectAll();
}