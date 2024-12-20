// @ts-check
const { test, expect } = require("@playwright/test");

test.beforeEach(async ({ page }) => {
    await page.goto("/");
});

test("page has title", async ({ page }) => {
    await expect(page).toHaveTitle(/Stripe interview/);
});
