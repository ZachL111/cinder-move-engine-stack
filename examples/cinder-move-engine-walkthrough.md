# Cinder Move Engine Stack Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | position pressure | 152 | ship |
| stress | move ordering | 176 | ship |
| edge | search width | 168 | ship |
| recovery | endgame risk | 255 | ship |
| stale | position pressure | 94 | hold |

Start with `recovery` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `stale` becomes less cautious without a clear reason, I would inspect the drag input first.
