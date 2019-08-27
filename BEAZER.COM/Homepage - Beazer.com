const puppeteer = require('puppeteer');
const { expect } = require('chai');
const login = require('./utils/PROD/login');


describe('Navigate to Beazer home page', () => {
   
    //Navigate to home page
before(() => {
browser = await puppeteer.launch
});

page = await browser.newPage();
await page.goTo(homePage.BeazerURL);
});


descirbe('Navigate to Beazer metro page', () => {

    //click on metro area dropdown menu
    it('click on drop down menu', () => {
        page = await dropdown.clickList(homePage)
    });

    //select option from dropdown
    it('select Atlanta, GA from drop down menu', () => {
        page = await dropdown.selectItem(dropDown)
    });

    //Click Go button
    it('Navigate to metro page', () => {
        page = await dropdownButton.clickButton(dropDownBar)
    });

     //Verify Page Title
     it('Confirm Title Reads Atlanta, GA', () => {
         await metroPage.waitFor(header.Logo)
         expect (await page.title()).contains('Atlanta, GA')
    });

    After(() => {
    await browser.close();  
    });
});
