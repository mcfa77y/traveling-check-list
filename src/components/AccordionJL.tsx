import { ExpandMore } from '@mui/icons-material';
import {
    Accordion,
    AccordionSummary,
    Typography,
    AccordionDetails,
    Grid,
} from '@mui/material';
import React from 'react';
import CheckboxJL from './CheckboxJL';
import { styled } from '@mui/system';

interface IFoo {
    label: string;
    optionList: string[];
}
type Props = {
    checkboxOptionList: IFoo[];
    summary: string;
};

function createCheckboxes(foo: IFoo) {
    const checkboxes = foo.optionList.sort().map((label, index) => (
        <Grid item xs={2} sm={4} md={4} key={index}>
            <CheckboxJL label={label} />
        </Grid>
    ));
    return (
        <SectionJL>
            <Typography variant="h5">{foo.label}</Typography>
            <Grid
                container
                spacing={{ xs: 2, md: 3 }}
                columns={{ xs: 4, sm: 8, md: 12 }}
            >
                {checkboxes}
            </Grid>
        </SectionJL>
    );
}

export default function AccordionJL({
    summary,
    checkboxOptionList,
}: Props) {
    const checkboxes = checkboxOptionList.map(createCheckboxes);
    return (
        <Accordion>
            <AccordionSummary
                expandIcon={<ExpandMore />}
                aria-controls="panel1a-content"
                id="panel1a-header"
            >
                <Typography variant='h4'>{summary}</Typography>
            </AccordionSummary>
            <AccordionDetails>

                {checkboxes}
            </AccordionDetails>
        </Accordion>
    );
}

const SectionJL = styled('div')({
    // color: 'white',
    // backgroundColor: 'lightgrey',
    padding: 8,
    borderStyle: 'solid',
    borderColor: 'lightgray',
    borderRadius: 12,
    marginBottom: 20,
  });