//import {frames} from './textCreation/imageTexts.js'
var frames
if(process.argv[2]){
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
      console.log('Venaas er NPC')
      console.log(frames[frame])
      frame == frames.length - 1 ? frame = 0 : frame ++
  }, 200);
}

