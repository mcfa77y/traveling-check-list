import {
  Button,
  Container,
  FormControl,
  FormGroup,
  FormHelperText,
  FormLabel,
} from "@mui/material";
import { styled } from "@mui/system";
import { useState } from "react";
import { useDispatch, useSelector } from "react-redux";
import "./App.css";
import AccordionJL from "./components/AccordionJL";
import {
  BASE_TRAVEL,
  BBQ,
  CABIN,
  CAMPING_CLOTHES,
  CAMPING_KITCHEN,
  CAMPING_MISC,
  CAMPING_SLEEPING,
  CHARGERS,
  COLD_PLACE,
  HOT_PLACE,
  INTERNATIONAL,
  PRETRIP,
  PRETRIP_DOWNLOAD,
  ROAD_TRIP,
  SNOWBOARDING,
  SURFING,
} from "./list";
import { toggleBoolean } from "./redux/accordianSlice";
import { RootState } from "./redux/store"; // Assuming you have a store file

function App() {
  const accordionState = useSelector((state: RootState) => state.accordion);
  const [showAll, setShowAll] = useState(true);
  const dispatch = useDispatch();
  const allAccordions = [
    {
      checkboxOptionList: [
        { label: "", optionList: BASE_TRAVEL },
        { label: "Charger", optionList: CHARGERS },
        { label: "Hot place", optionList: HOT_PLACE },
        { label: "Cold place", optionList: COLD_PLACE },
      ],
      summary: "Base Travel",
    },

    {
      checkboxOptionList: [
        { label: "", optionList: INTERNATIONAL },
        { label: "Pretrip", optionList: PRETRIP },
        { label: "Download", optionList: PRETRIP_DOWNLOAD },
      ],
      summary: "International",
    },

    {
      checkboxOptionList: [
        { label: "", optionList: SNOWBOARDING },
        { label: "Cold place", optionList: COLD_PLACE },
      ],
      summary: "Snowboarding",
    },

    {
      checkboxOptionList: [
        { label: "Clothes", optionList: CAMPING_CLOTHES },
        { label: "Hot place", optionList: HOT_PLACE },
        { label: "Cold place", optionList: COLD_PLACE },
        { label: "Sleeping", optionList: CAMPING_SLEEPING },
        { label: "Kitchen", optionList: CAMPING_KITCHEN },
        { label: "Misc", optionList: CAMPING_MISC },
      ],
      summary: "Camping",
    },

    {
      checkboxOptionList: [{ label: "", optionList: BBQ }],
      summary: "BBQ",
    },

    {
      checkboxOptionList: [{ label: "", optionList: ROAD_TRIP }],
      summary: "Road trip",
    },

    {
      checkboxOptionList: [{ label: "", optionList: SURFING }],
      summary: "Surfing",
    },

    {
      checkboxOptionList: [{ label: "", optionList: CABIN }],
      summary: "Cabin",
    },
  ];
  let filteredAccordions = allAccordions;
  if (!showAll) {
    filteredAccordions = allAccordions.filter(
      (accordion) => accordionState[accordion.summary]
    );
  }
  return (
    <ContainerJL maxWidth="md">
      <Button variant='contained' onClick={() => setShowAll(!showAll)}>hide unused</Button>
      <FormControl sx={{ m: 3 }} component="fieldset" variant="standard">
        <FormLabel component="legend">Travel Checklist</FormLabel>
        <FormGroup>
          {filteredAccordions.map((accordion, index) => (
            <AccordionJL
              key={accordion.summary + `_${index}`}
              checkboxOptionList={accordion.checkboxOptionList}
              summary={accordion.summary}
              expanded={accordionState[accordion.summary]} // Pass the expanded state from Redux
              onToggle={() => dispatch(toggleBoolean(accordion.summary))} // Dispatch the action to toggle
            />
          ))}
        </FormGroup>
        <FormHelperText>Bon Voyage</FormHelperText>
      </FormControl>
    </ContainerJL>
  );
}

const ContainerJL = styled(Container)({
  backgroundColor: "#17BEBB",
  borderRadius: 12,
});
export default App;
