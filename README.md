# ThreeJs learning

ThreeJs can able to render 3d object easily, user can interact with the object as well

- Lighting
- Shadow
- ✨Model✨


## Setup
Naviagte to corresponding folder
Download [Node.js](https://nodejs.org/en/download/).
Run this followed commands:

``` bash
# Install dependencies (only the first time)
npm install

# Run the local server at localhost:8080
npm run dev

# Build for production in the dist/ directory
npm run build
```

## Note for Material
- normals can be use for lighting, reflection, refraction 
- if you want to use MeshToonMaterial need set minFilter and magFilter to THREE.NearestFilter and set material.gradientMap to  texture

## Note for Particle 
- use depthTest = false to hide the edge but some bug will occur when there are some others object in the same scene
- set depthWrite = false to solve the problem mentioned above
- set blending = THREE.AdditiveBlending to add the color of the pixel to the color of the pixel already drawn
- set attribute needsUpdate = true to update the attribute 

## Note for random location
-  imagine there you want to generate a bunch of object inside a area
-  using angle = Math.random() * Math.PI * 2 to get the random angle
-  x position can be Math.cos(angle) * radius and z can be Math.sin(angle) * radius
-  in gerenal you can use Math.random() - 0.5 to get a random number within the range -0.5 to 0.5
-  using the multiper to enlarge the range

## Note for ambience
-  scene.fog = new THREE.Fog('#262837', 1, 15)
-  can create foggy environment

## Note for physics 
-  ammo.js vs [cannon.js](http://schteppe.github.io/cannon.js/docs/classes/Vec3.html)
-  one body can contain multiple shape
-  physics body can counting the with from center, so width/2 etc.
-  need update the quaternion for rotation
-  allowSleep = true, broadphase = new CANNON.SAPBroadphase(world) can improve the preformance

## Note for Object/Model
-  draco is using for compression, and it may much lighter
-  directionalLight.shadow.normalBias=0.05 to reduce the shadow map effect

## Note for Shader
- w for after z which is the forth axis
## Useful Resource Ref
- [3dtextures.me](https://3dtextures.me)
- [poliigon.com](https://www.poliigon.com/)
- [arroway-textures.ch](https://www.arroway-textures.ch/)
- [substance designer tutorial](https://www.youtube.com/playlist?list=PLB0wXHrWAmCwWfVVurGIQO_tMVWCFhnqE)
- [environment Map](https://polyhaven.com/)
－ [matcaps](https://github.com/nidorx/matcaps)
- [HDRI to CubeMap](https://matheowis.github.io/HDRI-to-CubeMap/)
- Cubmap View --> upload HDRI -->the asset in one row 
- [particle](https://www.kenney.nl/assets/particle-pack)
## Process



| Level | Process |
| ------ | ------ |
| Basics | ✅ |
| Classic techniques | ✅  |
| Advanced techniques | ✅  |
| Shaders | 🚧  |
| Extra | |

## License

MIT



[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

   [dill]: <https://github.com/joemccann/dillinger>
   [editor]: <https://dillinger.io/>