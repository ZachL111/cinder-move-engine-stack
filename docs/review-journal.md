# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 152, lane `ship`
- `stress`: `move ordering`, score 176, lane `ship`
- `edge`: `search width`, score 168, lane `ship`
- `recovery`: `endgame risk`, score 255, lane `ship`
- `stale`: `position pressure`, score 94, lane `hold`

## Note

A future change should add new cases before it changes the scoring rule.
