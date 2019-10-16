import React, { Component } from 'react'
import { Link }                           from 'react-router-dom'
import {Button, Icon, Label, Menu, Table} from "semantic-ui-react";

class TagList extends Component {

    state = {
        tags: []
    };

    componentDidMount() {
        fetch('/api/v1/tags')
            .then(tags => tags.json())
            .then(tags => {
                this.setState({
                    tags: tags
                })
            })
    }

    renderTags = () => {
        return this.state.tags.map(tag => {
            return (
                <Table.Row key={tag.id}>
                    <Table.Cell>{tag.id}</Table.Cell>
                    <Table.Cell>{tag.name}</Table.Cell>
                    <Table.Cell>{tag.description}</Table.Cell>
                </Table.Row>
            )
        })
    };

    render() {
        return (
            <div>
                <h1>Tag List</h1>
                <br/>
                <Button href="#/tags/new" primary size='mini'>Add a New Tag</Button>
                <Table celled>
                    <Table.Header>
                        <Table.Row>
                            <Table.HeaderCell>Id</Table.HeaderCell>
                            <Table.HeaderCell>Name</Table.HeaderCell>
                            <Table.HeaderCell>Description</Table.HeaderCell>
                        </Table.Row>
                    </Table.Header>
                    <Table.Body>
                        {this.renderTags()}
                    </Table.Body>
                </Table>

            </div>
        )
    }
}
export default TagList
