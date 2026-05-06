# cinder-move-engine-stack

`cinder-move-engine-stack` is a Elixir project in chess and game engines. Its focus is to build an Elixir toolkit that studies engine behavior through fixture event logs, with golden state snapshots and explicit failure cases.

## Purpose

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Cinder Move Engine Stack Review Notes

`recovery` and `stale` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/cinder-move-engine-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `endgame risk` and `position pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Elixir code keeps the review rule close to the tests.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 255, which lands in `ship`. The most cautious case is `stale` at 94, which lands in `hold`.

## Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
