// Privacy-friendly analytics placeholder.
// Set data-domain to your real domain before production.
(() => {
  const analyticsDomain = document.querySelector('meta[name="analytics-domain"]')?.content;
  if (!analyticsDomain || analyticsDomain === 'example.com') return;

  const script = document.createElement('script');
  script.defer = true;
  script.dataset.domain = analyticsDomain;
  script.src = 'https://plausible.io/js/script.js';
  document.head.appendChild(script);
})();
