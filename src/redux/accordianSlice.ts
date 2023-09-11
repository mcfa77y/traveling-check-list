import { createSlice, PayloadAction } from '@reduxjs/toolkit';

interface BooleanState {
  [key: string]: boolean;
}

const initialState: BooleanState = {
  "Base Travel": false,
  "International": false,
  "Snowboarding": false,
  "Camping": false,
  "BBQ": false,
  "Road trip": false,
  "Surfing": false,
  "Cabin": false,
};

const accordianSlice = createSlice({
  name: 'accordian',
  initialState,
  reducers: {
    toggleBoolean: (state, action: PayloadAction<string>) => {
      const name = action.payload;
      state[name] = !state[name]; // Toggle the boolean value
    },
    setBooleanTrue: (state, action: PayloadAction<string>) => {
      const name = action.payload;
      state[name] = true; // Set the boolean value to true
    },
    setBooleanFalse: (state, action: PayloadAction<string>) => {
      const name = action.payload;
      state[name] = false; // Set the boolean value to false
    },
  },
});

export const { toggleBoolean, setBooleanTrue, setBooleanFalse } = accordianSlice.actions;
export default accordianSlice.reducer;