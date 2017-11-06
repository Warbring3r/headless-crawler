const puppeteer = require('puppeteer');

(async() => {
  const browser = await puppeteer.launch({args: ['--no-sandbox']});
  console.log(await browser.version());
  const page = await browser.newPage();
  // Gmail has an http redirect
  await page.goto('http://gmail.com')
  console.log("url", await page.url())
  // Forbes has a JS redirect
  await page.goto('https://www.forbes.com/sites/samabuelsamid/2017/04/25/waymo-launches-early-rider-program-expands-self-driving-fleet-with-fiat-chrysler/&refURL=&referrer=')
  console.log("url", await page.url())
  console.log("going to sleep");
  await sleep(20000);
  console.log('waking up');
  console.log("url", await page.url())
  browser.close();
})();

async function sleep (ms) {
  return new Promise((resolve) => {
    // wait 3s before calling fn(par)
    setTimeout(() => resolve(), ms)
  })
}
