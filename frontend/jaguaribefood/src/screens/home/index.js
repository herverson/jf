import React from 'react'
import { Column, Button, Icon, Title } from "rbx";
import { FaCrosshairs } from "react-icons/all";

import "../../styles/home.scss";

const Home = () => (
    <Column.Group centered>
        <Column size="half" textAlign="centered" id="home">
            <Title size={2}>Comida para todos os gostos</Title>
            <Title subtitle size={3}>Entrega rápida para sua casa</Title>
            {/*<Title subtitle size={5}>Descubra no</Title>*/}
            <Button size="medium" color="custom-orange">
                <Icon size="small" color="white">
                    <FaCrosshairs />
                </Icon>
                <span class="has-text-danger">PROCURAR</span>
            </Button>
        </Column>
    </Column.Group>
)

export default Home;