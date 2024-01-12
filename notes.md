# Notes

## Behavior

A value changing over time

### Examples

- `true` is a value which is always `True`
- `blinking` is a boolean which changes its value at every iteration
- `firstIteration` is a boolean which is true only the first iteration
- `frequency` takes an integer `n` and provides a value which is true once every `n` iterations

## Event

A discrete event, that occurs at particular points in time.

Use `@:` to turn a behaviour into an event

### Examples

...

## Input

A value retrieved from a component of the board

Use the `input` function to retrieve an `Input`

## Output

Output a value to a component of the board

`(:=)` connects a behaviour or an event to an output

### Examples

`led =: true` says that the `led` component should always be on
