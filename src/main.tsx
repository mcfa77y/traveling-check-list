import React from "react";
import ReactDOM from "react-dom/client";
import { Provider } from "react-redux";
import App from "./App";
import "./index.css";
import { store } from "./redux/store"; // Import your TypeScript slice

const root = ReactDOM.createRoot(
  document.getElementById("root") as HTMLElement,
);
console.log(`[index] Provider: ${Provider}`);
root.render(
  <React.StrictMode>
    <Provider store={store}>
      <App />
    </Provider>
  </React.StrictMode>,
);
