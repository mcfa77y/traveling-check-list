import { Checkbox, FormControlLabel, Typography } from "@mui/material";
import { sentenceCase } from "change-case";

type Props = {
  label: string;
};

function CheckboxJL({ label }: Props) {
  return (
    <FormControlLabel
      control={
        <Checkbox
          sx={{
            "& .MuiSvgIcon-root": { fontSize: 38 },
          }}
        />
      }
      label={<Typography variant="h4">{sentenceCase(label)}</Typography>}
    />
  );
}

export default CheckboxJL;
