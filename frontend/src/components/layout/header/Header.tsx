import { NavLink } from 'react-router-dom'
import './Header.css'



export default function Header() {

    return (
        <div className='Header'>
            <div>Welcome</div>
            <nav>
                <NavLink to="/meetings">Meetings</NavLink> | <NavLink to="/add">Add Meeting</NavLink>


            </nav>

        </div>
    )
}