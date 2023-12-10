1. Trim video

```
ffmpeg -i inputVideo.mp4 -ss 00:00:03 -to 00:00:08 -c:v copy -c:a copy trimmedVideo.mp4
```

2. Concat video

- Create file file.txt

```
file '/path/to/clip1'
file '/path/to/clip2'
```

- Run

```
ffmpeg -f concat -safe 0 -i file.txt -c copy video.mp4
```
