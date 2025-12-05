# Bloodstained Fangs

A solo tabletop RPG of vampires, werewolves, and witches struggling to survive in the urban shadows.

[Download for free](https://bloodstained-fangs.trippy.pizza)

## Compiling the PDF

This book is written in [Typst](https://typst.app/), a modern markup-based typesetting system.

### Prerequisites

You need to have Typst installed on your system. Choose one of the following methods:

If you have Nix installed, simply run:

```bash
nix-shell
```

This will automatically load the development environment with Typst installed.

Otherwise, visit [Typst's releases page](https://github.com/typst/typst/releases) and install Typst on your system.

### Scripts

Once Typst is installed you can use the following scripts:

- `build.sh`: Compiles the PDF and updates the website
- `watch.sh`: Watches for changes and recompiles the PDF automatically


### Project Structure

```
bloodstained-fangs/
├── main.typ           # Main entry point that includes all chapters
├── template.typ       # Custom template with styling and layout
├── src/               # Chapter source files
├── website/           # Website (static) files
├── fonts/             # Fonts used in the PDF
├── art/               # Images
```

## Development

### Making Changes

1. Edit the chapter files in the `src/` directory
2. Modify styling and layout in `template.typ`
3. Run `typst watch main.typ` to see changes in real-time

### Adding New Chapters

1. Create a new `.typ` file in the `src/` directory
2. Add an `#include` line in `main.typ` at the appropriate position

## Credits

This games contains elements from:

- Loner (CC BY-SA 4.0 Roberto Bisceglie)
- Elegy (CC BY-SA 4.0 Moro de Oliveira)

## License

CC BY-SA 4.0

See [LICENSE.md](LICENSE.md) for details.
