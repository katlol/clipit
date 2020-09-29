# clipit

Usage:

```
docker run --rm -v$(pwd):/data:ro -e STREAMABLE_USER="email" -e STREAMABLE_PASSWORD="pass" chauffer/clipit input_file.mp4 25:20 120
```

Will clip input_file.mp4 starting at 25:20 for 120 seconds.
