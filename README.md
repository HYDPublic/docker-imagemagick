# Usage

## One file optimization
You have to mount image folder to optimized into **/app** directory. Example :

```
docker run --rm -v "$( pwd ):/app" raffael/imagemagick magick convert myPic.jpg -resize '300x300>' myResizedPic.jpg
```

## Get help

If you run the container without any option help will be show.

```
docker run --rm raffael/imagemagick
```

## Multiple file

Example : Resize all JPEG files to 300x300 max 

```
find $pwd -type f -name '*.jpeg' -o -name '*.jpg' -exec docker run --rm -v "$( pwd ):/app" raffael/imagemagick magick convert {} -resize "300x300>" {} \;
```
