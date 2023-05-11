import {frames} from './animations/subway.js'

var frame = 0
setInterval(() => {
    console.log('Venaas er NPC')
    console.log(frames[frame])
    frame == frames.length - 1 ? frame = 0 : frame ++
}, 200);

