import { Sequelize } from "sequelize-typescript";
import config from 'config'
import Meetings from "../models/Meetings";
import Teems from "../models/Teems";


const sequelize = new Sequelize({
    ...config.get('db'),
    dialect: 'mysql',
    models: [ Teems, Meetings], 
    logging: console.log
})

export default sequelize