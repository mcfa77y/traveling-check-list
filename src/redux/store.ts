import accordionReducer from './accordianSlice'; // Import your accordion reducer here
import { configureStore } from '@reduxjs/toolkit';
// Import other reducers if you have additional slices


export const store = configureStore({
  reducer: {
    accordion: accordionReducer,
  }, 
});

export type RootState = ReturnType<typeof store.getState>;
export type AppDispatch = typeof store.dispatch;

