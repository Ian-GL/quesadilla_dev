// The code in this hook that makes the eye follow the cursor was blatantly copied from this tutorial:
// https://learnersbucket.com/tutorials/js-projects/eye-follow-cursor-in-javascript/
// Original author is [Prashant Yadav](https://learnersbucket.com/author/know_prashant/)

const rotateEyes = (e) => {
  const eyes = document.querySelectorAll(".eye");

  eyes.forEach(function (eye) {
    let x = eye.getBoundingClientRect().left + eye.clientWidth / 2;
    let y = eye.getBoundingClientRect().top + eye.clientHeight / 2;

    let radian = Math.atan2(e.pageX - x, e.pageY - y);
    let rotate = radian * (180 / Math.PI) * -1 + 270;
    eye.style.transform = "rotate(" + rotate + "deg)";
  });
}

const GooglyEyes = {
  mounted() {
    window.addEventListener("mousemove", rotateEyes);
  },
  destroyed() {
    window.removeEventListener("mousemove", rotateEyes);
  }
};

export default GooglyEyes;