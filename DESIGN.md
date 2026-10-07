---
version: alpha
name: Graded Vocab Reader Design System
colors:
  primary: "#1D4ED8"
  primary-light: "#EFF6FF"
  primary-dark: "#1E3A8A"
  secondary: "#047857"
  secondary-light: "#FFFFFF"
  accent: "#2563EB"
  background: "#F8FAFC"
  surface: "#FFFFFF"
  surface-glass: "rgba(255, 255, 255, 0.88)"
  surface-dark: "#0F172A"
  text: "#0F172A"
  text-muted: "#64748B"
  text-light: "#F8FAFC"
  border: "#CBD5E1"
  border-subtle: "#F1F5F9"
  warning: "#FEF3C7"
  warning-dark: "#78350F"
typography:
  headline:
    fontFamily: -apple-system, BlinkMacSystemFont, "Plus Jakarta Sans", "Inter", "Segoe UI", Roboto, sans-serif
    fontSize: 28px
    fontWeight: 800
    lineHeight: 1.2
  title:
    fontFamily: -apple-system, BlinkMacSystemFont, "Plus Jakarta Sans", "Inter", "Segoe UI", Roboto, sans-serif
    fontSize: 20px
    fontWeight: 700
    lineHeight: 1.3
  body:
    fontFamily: -apple-system, BlinkMacSystemFont, "Inter", "Segoe UI", Roboto, sans-serif
    fontSize: 16px
    fontWeight: 400
    lineHeight: 1.85
  caption:
    fontFamily: -apple-system, BlinkMacSystemFont, "Inter", "Segoe UI", Roboto, sans-serif
    fontSize: 13px
    fontWeight: 600
    lineHeight: 1.4
spacing:
  base: 16px
  xs: 4px
  sm: 8px
  md: 16px
  lg: 24px
  xl: 32px
rounded:
  sm: 6px
  md: 10px
  lg: 16px
  xl: 20px
  full: 9999px
components:
  button-primary:
    backgroundColor: "{colors.primary}"
    textColor: "{colors.text-light}"
    rounded: "{rounded.full}"
    padding: "{spacing.sm}"
  button-audio:
    backgroundColor: "{colors.accent}"
    textColor: "{colors.text-light}"
    rounded: "{rounded.md}"
    padding: "{spacing.xs}"
  button-save-gold:
    backgroundColor: "{colors.warning}"
    textColor: "{colors.warning-dark}"
    rounded: "{rounded.md}"
    padding: "{spacing.sm}"
  badge-highlight:
    backgroundColor: "{colors.warning}"
    textColor: "{colors.warning-dark}"
    rounded: "{rounded.sm}"
    padding: "{spacing.xs}"
  card:
    backgroundColor: "{colors.surface}"
    textColor: "{colors.text}"
    rounded: "{rounded.lg}"
    padding: "{spacing.lg}"
  card-glass:
    backgroundColor: "{colors.surface-glass}"
    textColor: "{colors.text}"
    rounded: "{rounded.lg}"
    padding: "{spacing.md}"
  popover-floating:
    backgroundColor: "{colors.surface-dark}"
    textColor: "{colors.text-light}"
    rounded: "{rounded.xl}"
    padding: "{spacing.md}"
  badge-level:
    backgroundColor: "{colors.primary-light}"
    textColor: "{colors.primary}"
    rounded: "{rounded.full}"
    padding: "{spacing.xs}"
  badge-success:
    backgroundColor: "{colors.secondary}"
    textColor: "{colors.secondary-light}"
    rounded: "{rounded.full}"
    padding: "{spacing.xs}"
  header-hero:
    backgroundColor: "{colors.primary-dark}"
    textColor: "{colors.text-light}"
    rounded: "{rounded.xl}"
    padding: "{spacing.xl}"
  divider:
    backgroundColor: "{colors.border}"
    height: "1px"
  divider-subtle:
    backgroundColor: "{colors.border-subtle}"
    height: "1px"
  text-muted:
    textColor: "{colors.text-muted}"
---
## Overview
High-end pedagogical design system for Comprehensible Input (i+1) graded readers.

## Colors
- Electric Royal Blue (`#1D4ED8`) & Accent Blue (`#2563EB`) for focused reading hierarchy.
- Emerald (`#047857`) for positive CEFR progression & context cues.
- Deep Obsidian (`#0F172A`) for distraction-free floating popovers & bottom sheets.
- Amber Gold Surface (`#FEF3C7`) with Deep Amber text (`#78350F`) for 8.2:1 contrast ratio.
- Pure White & Slate 50 surfaces with refined borders (`#CBD5E1`).

## Typography
- Modern sans-serif stack with proportional line height (1.85) for optimal readability.
- Clear visual hierarchy with font-weight contrast (400 vs 600 vs 700 vs 800).

## Elevation & Depth
- Layer 1 (Cards): Subtle 1px border with soft ambient shadow.
- Layer 2 (Toolbar/Drawers): Glassmorphism with backdrop blur (16px).
- Layer 3 (Floating Popovers / Bottom Sheet): Deep shadow with ambient glow for fast scanning.

## Components
- Interactive Vocab Pills: High-affordance tokens with lift & glow on hover.
- Quick Lookup Popover: Touch-ergonomic bottom-docked card with WCAG AA compliance.
- Segmented Audio Controls: Modern pill toggle buttons for speech rates.
- Slide-in Drawer: Clean 460px desktop drawer with full lexical cards.
