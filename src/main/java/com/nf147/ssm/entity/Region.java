package com.nf147.ssm.entity;

public class Region {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column region.region_id
     *
     * @mbg.generated
     */
    private String regionId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column region.region_name
     *
     * @mbg.generated
     */
    private String regionName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column region.city_id
     *
     * @mbg.generated
     */
    private String cityId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column region.region_id
     *
     * @return the value of region.region_id
     *
     * @mbg.generated
     */
    public String getRegionId() {
        return regionId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column region.region_id
     *
     * @param regionId the value for region.region_id
     *
     * @mbg.generated
     */
    public void setRegionId(String regionId) {
        this.regionId = regionId == null ? null : regionId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column region.region_name
     *
     * @return the value of region.region_name
     *
     * @mbg.generated
     */
    public String getRegionName() {
        return regionName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column region.region_name
     *
     * @param regionName the value for region.region_name
     *
     * @mbg.generated
     */
    public void setRegionName(String regionName) {
        this.regionName = regionName == null ? null : regionName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column region.city_id
     *
     * @return the value of region.city_id
     *
     * @mbg.generated
     */
    public String getCityId() {
        return cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column region.city_id
     *
     * @param cityId the value for region.city_id
     *
     * @mbg.generated
     */
    public void setCityId(String cityId) {
        this.cityId = cityId == null ? null : cityId.trim();
    }
}