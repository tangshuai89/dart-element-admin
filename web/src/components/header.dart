import 'dart:html';

DivElement getLogo() {
  DivElement logo = DivElement();
  logo.className = 'logo';

  HeadingElement h1 = HeadingElement.h1();
  h1.text = 'Mole';

  logo.children.add(h1);
  return logo;
}

UListElement getMenu() {
  UListElement menuList = UListElement();
  var menuArray = [
    {
      'name': 'Home',
      'link': '/home',
    },
    {
      'name': 'Blog',
      'link': '/blog',
    },
    {
      'name': 'Market',
      'link': '/market',
    },
  ];
  for (final menu in menuArray) {
    LIElement menuLiList = LIElement();
    AnchorElement link = AnchorElement();
    link.href = menu['link'];
    link.text = menu['name'];
    menuLiList.children.add(link);
    menuList.children.add(menuLiList);
  }
  return menuList;
}

DivElement getHeader() {
  DivElement headerContainer = DivElement();
  headerContainer.className = 'header-container';

  headerContainer.children.add(getLogo());
  headerContainer.children.add(getMenu());

  return headerContainer;
}
