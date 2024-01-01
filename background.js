browser.runtime.onInstalled.addListener(() => {
  browser.contextMenus.create(
    {
      title: "وبسایت حق فراموش شدن",
      id: "rtbfWebsite",
    },
    () => browser.runtime.lastError
  );
});

browser.contextMenus.onClicked.addListener(function (info, tab) {
  const { menuItemId } = info;

  if (menuItemId === "rtbfWebsite") {
    browser.tabs.create({
      url: "https://rtbf.ir",
    });
  }
});