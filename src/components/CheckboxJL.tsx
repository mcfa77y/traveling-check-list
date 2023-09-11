import { Checkbox, FormControlLabel } from '@mui/material';
import { sentenceCase } from 'change-case';

type Props = {
  label: string;
};

function CheckboxJL({ label }: Props) {
  return (
    <FormControlLabel
      control={
        <Checkbox
          sx={{
            '& .MuiSvgIcon-root': { fontSize: 38 },
          }}
        />
      }
      label={sentenceCase(label)}
    />
  );
}

export default CheckboxJL;
