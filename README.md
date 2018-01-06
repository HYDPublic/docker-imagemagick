# ImageMagick for Docker

## Description
Just a simple Docker image containing ImageMagick (Based on Alpine Linux).

## One file optimization
You have to mount your image folder into **/app** directory.
**Example :**

```
docker run --rm -v "$( pwd ):/app" rafffael/imagemagick convert myPic.jpg -verbose -resize '300x300>' myResizedPic.jpg
```

## Get help

If you run the container without any option help will be shown.

```
docker run --rm rafffael/imagemagick
```

## Multiple file

**Example :** Resize all JPEG files to 300x300 max 

```
docker run --rm -v "$( pwd ):/app" rafffael/imagemagick find -type f -iname '*.jpg' -o -iname '*.jpeg' -exec convert {} -verbose -resize "300x300>" {} \;
```
