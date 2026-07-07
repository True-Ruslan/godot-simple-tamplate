# Release Process

Use this process for template releases.

## 1. Validate locally

Complete:

- `docs/LOCAL_VALIDATION_GUIDE.md`
- `docs/PLAYTEST_CHECKLIST.md`
- `docs/RELEASE_CHECKLIST.md`

## 2. Update docs

Update:

- `docs/CHANGELOG.md`
- release notes for the target version;
- known limitations.

## 3. Create tag

Example:

```bash
git tag v0.1.0
git push origin v0.1.0
```

## 4. Create GitHub release

Release title:

```text
v0.1.0 - Initial Atmospheric Horror Template
```

Release content should include:

- summary;
- included features;
- known limitations;
- validation notes;
- next version plan.

## 5. After release

Create a new roadmap section for the next version.
