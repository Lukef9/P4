import React from 'react';

function Users({users, handleEdit}) {
  return (
    <div>
    <h1>Current Users</h1> <br/>
      {users.map((user) => (
          <div key={user.id} className='contain'>
            <div className="grid-item">
            <p>Username: {user.username} </p>
            <p>e-mail: {user.email} </p>
            <p>password: {user.password_digest} </p>
            </div>
            <button onClick={(e)=>handleEdit(e)}  name="edit" value={user.id}>edit</button>
          </div>
      ))}
    </div>
  )
}

export default Users;