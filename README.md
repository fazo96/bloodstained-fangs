# Bloodstained Fangs

A solo tabletop RPG of vampires, werewolves, and witches struggling to survive in the urban shadows.

## Compiling the PDF

This book is written in [Typst](https://typst.app/), a modern markup-based typesetting system.

### Prerequisites

You need to have Typst installed on your system. Choose one of the following methods:

#### Option 1: Using Nix (Recommended for this project)

If you have Nix installed, simply run:

```bash
nix-shell
```

This will automatically load the development environment with Typst installed.

#### Option 2: Install Typst directly

- **Using Homebrew (macOS/Linux):**
  ```bash
  brew install typst
  ```

- **Using Cargo (Rust package manager):**
  ```bash
  cargo install --git https://github.com/typst/typst --locked typst-cli
  ```

- **Download pre-built binaries:**
  Visit [Typst's releases page](https://github.com/typst/typst/releases) and download the appropriate binary for your system.

### Compilation Commands

Once Typst is installed, compile the book using:

```bash
typst compile main.typ
```

This will generate `main.pdf` in the project root directory.

#### Custom output filename

To specify a custom output filename:

```bash
typst compile main.typ bloodstained-fangs.pdf
```

#### Watch mode (automatically recompile on changes)

For development, you can use watch mode to automatically recompile when files change:

```bash
typst watch main.typ
```

### Project Structure

```
bloodstained-fangs/
├── main.typ           # Main entry point that includes all chapters
├── template.typ       # Custom template with styling and layout
├── src/              # Chapter source files
│   ├── 1_intro.typ
│   ├── 2_setting_intro.typ
│   ├── 3_characters.typ
│   ├── 4_rules.typ
│   ├── 5_setting.typ
│   ├── 6_factions.typ
│   ├── 7_creatures.typ
│   ├── 8_tables.typ
│   └── 9_outro.typ
└── md/               # Original markdown files (for reference)
```

### Troubleshooting

**Missing fonts:**
If you encounter font-related errors, Typst will use fallback fonts automatically. The template uses "Linux Libertine" which is widely available. If needed, you can modify the font in `template.typ`.

**Compilation errors:**
- Ensure all files in `src/` directory exist and are properly formatted Typst files
- Check that the template file is not corrupted
- Verify you're using a recent version of Typst: `typst --version`

## Development

### Making Changes

1. Edit the chapter files in the `src/` directory
2. Modify styling and layout in `template.typ`
3. Run `typst watch main.typ` to see changes in real-time

### Adding New Chapters

1. Create a new `.typ` file in the `src/` directory
2. Add an `#include` line in `main.typ` at the appropriate position

## License

See the book content for licensing information.
