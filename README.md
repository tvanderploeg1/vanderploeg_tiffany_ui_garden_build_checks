# Component Library - Assignment 13

React page with code quality checks to the build process

## Docker Instructions

1. **Build:**
```bash
docker build -t vanderploeg_tiffany_coding_assignment13 .
```

2. **Run:**
```bash
docker run --name vanderploeg_tiffany_coding_assignment13 -p 8018:8018 vanderploeg_tiffany_coding_assignment13
```

3. **Open:** http://localhost:8018

## Components
- Button
- Label  
- Text
- Table
- TableHeader
- TableRow
- TableCell
- TableFooter
- Dropdown
- RadioButton
- Img
- HeroImage
- Card

All components have:
- Default and disabled states
- Background color control
- Responsive design
- Tests for visibility and disabled state
- TypeScript support
- Styled Components integration

## Code Quality Features

### Pre-commit Checks
- **Prettier** - Code formatting
- **ESLint** - Code quality and errors
- **Tests** - All unit tests must pass

### GitHub Actions
- Runs same checks on every push/PR
- Blocks merge if quality checks fail

## Development

```bash
# Install dependencies
npm install

# Set up code quality hooks
npm run prepare

# Start development
npm start

# Start Storybook
npm run storybook

# Run quality checks manually
npm run pre-commit
```