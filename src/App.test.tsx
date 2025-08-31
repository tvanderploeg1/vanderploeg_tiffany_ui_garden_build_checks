import React from 'react';
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders component library title', () => {
  render(<App />);
  const titleElement = screen.getByText(/UC Component Library/i);
  expect(titleElement).toBeInTheDocument();
});

test('renders assignment info', () => {
  render(<App />);
  const assignmentElement = screen.getByText(/Assignment 13/i);
  expect(assignmentElement).toBeInTheDocument();
});