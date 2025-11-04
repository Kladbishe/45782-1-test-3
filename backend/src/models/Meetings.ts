import { AllowNull, BelongsTo, Column, DataType, Default, ForeignKey, HasMany, Model, PrimaryKey, Table } from "sequelize-typescript";

import Teems from "./Teems";

@Table({
    underscored: true
})
export default class Meeting extends Model {

    @PrimaryKey
    @Default(DataType.UUIDV4)
    @Column(DataType.UUID)
    id: string

    @ForeignKey(() => Teems)
    @AllowNull(false)
    @Column(DataType.UUID)
    teemsId: string 


    @AllowNull(false)
    @Column(DataType.DATE)
    startDate: Date

    @AllowNull(false)
    @Column(DataType.DATE)
    endDate: Date

    @AllowNull(false)
    @Column(DataType.TEXT)
    description: string

    @AllowNull(true)
    @Column(DataType.STRING)
    room: string


    @BelongsTo(() => Teems)
    teems: Teems

}