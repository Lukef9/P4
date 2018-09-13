import React, { Component } from 'react';

class CreateUser extends Component {

  constructor(props) {
    super(props);

    this.state = {
      username: '',
      email: '',
      password_digest: ''
    };

    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(ev) {
    const { name, value } = ev.target;

    this.setState({
      [name]: value
    });
  }

  handleSubmit(ev) {
    ev.preventDefault();
    this.props.onSubmit(this.state);
  }

  render() {
    return (
      <div>
        <h2>Register</h2>

        <form onSubmit={this.handleSubmit}>
          <label>Username</label>
          <input
            type="text"
            name="username"
            onChange={this.handleChange}
            value={this.state.username} />
      
          <label>Email</label>
          <input
            type="text"
            name="email"
            onChange={this.handleChange}
            value={this.state.email} />

          <label>Password</label>
          <input
            type="text"
            name="password_digest"
            onChange={this.handleChange}
            value={this.state.password_digest} />

          <input type="submit" value="Register" />
        </form>
      </div>
    );
  }
}

export default CreateUser;