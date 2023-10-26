import { ExpandMore } from "@mui/icons-material";
import {
  Accordion,
  AccordionDetails,
  AccordionSummary,
  Grid,
  Typography,
} from "@mui/material";
import { styled } from "@mui/system";
import CheckboxJL from "./CheckboxJL";

interface IOptionContainer {
  label: string;
  optionList: string[];
}
type Props = {
  checkboxOptionList: IOptionContainer[];
  summary: string;
  expanded?: boolean;
  onToggle: () => void;
};

function createCheckboxes(optionContainer: IOptionContainer, summary: string) {
  const checkboxes = optionContainer.optionList.sort().map((label, index) => {
    const key = `${summary}_${label}_${index}`;
    console.log(`[AccordionJL] ${key}`);
    return (
      <Grid
        item
        xs={2}
        sm={4}
        md={4}
        key={key}
        style={{ display: "flex", alignItems: "center" }}
      >
        <CheckboxJL label={label} />
      </Grid>
    );
  });
  return (
    <SectionJL>
      <Typography variant="h3">{optionContainer.label}</Typography>
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
  expanded = false,
  onToggle,
}: Props) {
  const checkboxes = checkboxOptionList.map((checkBoxOption) => {
    return createCheckboxes(checkBoxOption, summary);
  });
  return (
    <Accordion expanded={expanded} onChange={onToggle}>
      <AccordionSummary
        expandIcon={<ExpandMore />}
        aria-controls="panel1a-content"
        id="panel1a-header"
      >
        <Typography variant="h3">{summary}</Typography>
      </AccordionSummary>
      <AccordionDetails>{checkboxes}</AccordionDetails>
    </Accordion>
  );
}

const SectionJL = styled("div")({
  // color: 'white',
  // backgroundColor: 'lightgrey',
  padding: 8,
  borderStyle: "solid",
  borderColor: "lightgray",
  borderRadius: 12,
  marginBottom: 20,
});
