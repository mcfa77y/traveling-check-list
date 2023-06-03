import {
    Container,
    FormControl,
    FormGroup,
    FormHelperText,
    FormLabel,
} from '@mui/material';
import './App.css';
import AccordionJL from './components/AccordionJL';
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
} from './list';
import { styled } from '@mui/system';

function App() {
    return (
        <ContainerJL maxWidth="md">
            <FormControl sx={{ m: 3 }} component="fieldset" variant="standard">
                <FormLabel component="legend">Travel Checklist</FormLabel>
                <FormGroup>
                    <AccordionJL
                        checkboxOptionList={[
                            { label: '', optionList: BASE_TRAVEL },
                            { label: 'Charger', optionList: CHARGERS },
                            { label: 'Hot place', optionList: HOT_PLACE },
                            { label: 'Cold place', optionList: COLD_PLACE },
                        ]}
                        summary="Base Travel"
                    />

                    <AccordionJL
                        checkboxOptionList={[
                            { label: '', optionList: INTERNATIONAL },
                            { label: 'Pretrip', optionList: PRETRIP },
                            { label: 'Download', optionList: PRETRIP_DOWNLOAD },
                        ]}
                        summary="International"
                    />

                    <AccordionJL
                        checkboxOptionList={[
                            { label: '', optionList: SNOWBOARDING },
                            { label: 'Cold place', optionList: COLD_PLACE },
                        ]}
                        summary="Snowboarding"
                    />

                    <AccordionJL
                        checkboxOptionList={[
                            { label: 'Clothes', optionList: CAMPING_CLOTHES },
                            { label: 'Hot place', optionList: HOT_PLACE },
                            { label: 'Cold place', optionList: COLD_PLACE },
                            { label: 'Sleeping', optionList: CAMPING_SLEEPING },
                            { label: 'Kitchen', optionList: CAMPING_KITCHEN },
                            { label: 'Misc', optionList: CAMPING_MISC },
                        ]}
                        summary="Camping"
                    />

                    <AccordionJL
                        checkboxOptionList={[{ label: '', optionList: BBQ }]}
                        summary="BBQ"
                    />

                    <AccordionJL
                        checkboxOptionList={[
                            { label: '', optionList: ROAD_TRIP },
                        ]}
                        summary="Road trip"
                    />

                     <AccordionJL
                        checkboxOptionList={[
                            { label: '', optionList: SURFING },
                        ]}
                        summary="Surfing"
                    />
          
                    <AccordionJL
                        checkboxOptionList={[
                            { label: '', optionList: CABIN },
                        ]}
                        summary="Cabin"
                    />
                </FormGroup>
                <FormHelperText>Bon Voyage</FormHelperText>
            </FormControl>
        </ContainerJL>
    );
}

const ContainerJL = styled(Container)({
    backgroundColor: '#17BEBB',
    borderRadius: 12,
    
  });
export default App;
