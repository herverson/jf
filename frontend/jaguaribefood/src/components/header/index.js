import React from 'react';

import { Navbar, Container } from 'rbx';
import LogoImage from '../../assets/images/logov1.png';

import "../../styles/header.scss";

const Header = () => (
  <Navbar>
    <Container>
      <Navbar.Brand>
        <img src={LogoImage} alt="Logo jaguaribe Food" />
      </Navbar.Brand>
    </Container>
  </Navbar>
);

export default Header;