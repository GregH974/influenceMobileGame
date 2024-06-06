import React from "react";

function HelloWorld() {
  const e = React.createElement;
  return e('div', { className: 'greeting' }, 'HelloWorld');
}

export default HelloWorld;

