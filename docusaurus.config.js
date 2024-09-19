import {themes as prismThemes} from 'prism-react-renderer';

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'Snippets',
  tagline: 'A Collection of Useful Dev tools and Snippets',
  favicon: 'img/favicon.ico',
  url: 'http:localhost:3000',
  baseUrl: '/',
  organizationName: 'Pradumnasaraf',
  projectName: 'Snippets',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: './sidebars.js',
          routeBasePath: '/',
          editUrl:
            'https://github.com/Pradumnasaraf/Snippets/edit/main/',
        },
        blog: false,
        theme: {
          customCss: './src/css/custom.css',
        },
        googleTagManager: {
          containerId: 'GTM-KQ3SQPTJ',
        }
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      // Replace with your project's social card
      image: 'img/snippets-repo-card.png',
      navbar: {
        title: 'Snippets',
        logo: {
          alt: 'Snippets Logo',
          src: 'img/logo.svg',
        },
        items: [
          {
            href: 'https:github.com/Pradumnasaraf/Snippets',
            label: 'GitHub',
            position: 'right',
          },
          {
            href: 'https://twitter.com/pradumna_saraf',
            label: 'Twitter',
            position: 'right',
          }
        ],
      },
      footer: {
        logo: {
          alt: 'Snippets Logo',
          src: 'img/logo.svg',
          href: 'https://snippets.pradumnasaraf.dev',
        },
        style: 'light',
        copyright: `Copyright © ${new Date().getFullYear()} Pradumna Saraf.`,
      },
      prism: {
        theme: prismThemes.github,
        darkTheme: prismThemes.dracula,
      },
    }),
};

export default config;