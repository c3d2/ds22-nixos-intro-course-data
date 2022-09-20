# NixOS Einführungsvortrag

course data of the nixos introduction lecture

[Hier gehts zu den Slides](https://c3d2.github.io/ds22-nixos-intro-course-data/)

Wir schauen uns einfache Flake basierende NixOS Systemkonfigurationen an und versuchen Schritt für Schritt das alltägliche Arbeiten mit NixOS zu demonstrieren.

Nachdem man sich das ISO Image von den NixOS-Servern heruntergeladen hat, kann das ganze über QEmu ausprobiert werden.

## Vorgehen

1. NixOS basis Sytem mit dem grafischen Installer installieren
2. nachdem das Basissystem hochgefahren wurde: `nix shell -p git`
3. `git clone https://github.com/c3d2/ds22-nixos-intro-course-data`
4. verschiedene Konfigurationen ausprobieren (z.B. `nixos-rebuild boot --flake ./ds22-nixos-intro-course-data/02-flake-simple#ds22` )
