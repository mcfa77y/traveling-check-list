import { Checkbox, checkboxClasses, FormControlLabel } from '@mui/material'
import { sentenceCase } from 'change-case'
import React from 'react'
import { styled } from '@mui/system';

type Props = {
    label: string
}

function CheckboxJL({label}: Props) {
  return (
    <FormControlLabel
            control={
              <Checkbox sx={
                {
                  '& .MuiSvgIcon-root': { fontSize: 38 },
              }} />
            }
            label={sentenceCase(label)}
          />
  )
}


export default CheckboxJL