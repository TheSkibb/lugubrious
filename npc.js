//import {frames} from './textCreation/imageTexts.js'
var frames
console.log(process.env.npm_config_animation)
if(process.env.npm_config_animation){
  import('./animations/' + process.env.npm_config_animation+ '.js').then(animation => {
    animate(animation.frames)
  })
}
else if(process.argv[2]){
  import('./animations/' + process.argv[2] + '.js').then(animation => {
    animate(animation.frames)
  })
}
else{
  import('./textCreation/imageTexts.js').then(animation => {
    animate(animation.frames)
  })
}

function animate(frames){
  var frame = 0
  setInterval(() => {
      console.log(frames[frame])
      frame == frames.length - 1 ? frame = 0 : frame ++
  }, 200);
}

