# Roadmap d'amélioration du portfolio

État des lieux (constaté dans le code actuel) :
- Sections vides : `Mobility`, `Civic Engagement`, `Hobbies` (juste un `<p></p>`).
- Timeline "Engineering Courses" : la 2e année est encore en `"Future" / "Just have to wait."`.
- Section "Career Development" mentionne "in 2025" et vise le logiciel embarqué (Thales, Dassault, MBDA) — à recroiser avec l'orientation ASR (administration systèmes et réseaux), qui est plutôt infra/réseau/cloud/sécurité que embarqué. À trancher avant de coder.
- Pas de dark mode, pas de version FR, pas de meta description/SEO, pas de favicon détecté.
- `README.md` vide.
- Un seul point d'entrée `index.html` (~340 lignes), un seul CSS (`style.css`, 337 lignes), déjà 2 media queries `max-width: 600px` — donc un début de responsive existe.

---

## 1. Contenu à mettre à jour (priorité haute)

- [ ] **Timeline "Engineering Courses"** : ajouter le bloc 2e année ASR à N7 (ENSEEIHT) — matières clés (réseaux, systèmes, admin Linux/Windows, virtualisation, sécurité, cloud, etc.), outils/langages utilisés, année scolaire 2026–2027.
- [ ] **Renommer/clarifier la filière** : préciser "ASR" (Administration Systèmes et Réseaux) quelque part dans le "Home" ou dans la timeline, pour que ce soit lisible par un recruteur qui ne connaît pas les sigles N7.
- [ ] **Section "Mobility"** : remplir (semestre à l'étranger prévu ? Erasmus ? sinon soit la retirer, soit expliquer que ce n'est pas encore planifié).
- [ ] **Section "Civic Engagement"** : remplir (asso, bénévolat, tutorat, etc.) ou retirer si rien à mettre — une section vide nuit plus qu'elle n'aide.
- [ ] **Section "Hobbies"** : remplir avec quelques centres d'intérêt (même courts, ça humanise le profil) ou retirer.
- [ ] **Section "Career Development"** : redéfinir la projection de carrière en cohérence avec ASR (ex. administrateur systèmes/réseaux, DevOps, cloud engineer, sécurité) plutôt que "embedded software engineer" — à discuter ensemble avant de coder.
- [ ] **Mettre à jour le CV PDF** (`pdf/resume_en.pdf`) en parallèle des mises à jour du site, pour rester cohérent.
- [ ] **Section "Personal Tech Project"** : ajouter un projet lié à ASR si tu en fais un (ex. homelab, script d'administration réseau, conteneurisation Docker/Kubernetes, monitoring, CTF/sécu) — ça viendrait équilibrer les deux projets actuels plutôt orientés algo/bas niveau.

## 2. Structure / UX

- [ ] Revoir la nav si des sections sont supprimées (ne pas laisser de liens morts).
- [ ] Ajouter une section "Contact" claire (mail, éventuellement formulaire ou juste `mailto:`).
- [ ] Vérifier la cohérence des ancres (`#home`, `#courses`, etc.) et le scroll (smooth scroll ?).
- [ ] Ajouter un indicateur de section active dans la nav (au scroll) pour l'ergonomie.
- [ ] Réfléchir à un ordre de sections plus "pitch recruteur" : Home → Courses → Projects → Career → (Mobility/Civic/Hobbies en fin, plus secondaires).

## 3. Design visuel

- [ ] Dark mode (`prefers-color-scheme` + toggle manuel).
- [ ] Vérifier la cohérence des couleurs/typo entre toutes les sections (actuellement seule la home a une mise en avant forte avec les logos YouTube/LinkedIn/GitHub).
- [ ] Ajouter des icônes/illustrations pour "Mobility", "Civic Engagement", "Hobbies" une fois remplies, pour éviter des blocs de texte nus.
- [ ] Petites animations discrètes au scroll (fade-in des sections) — à faire léger, pas de sur-effet.
- [ ] Favicon (actuellement absent du `<head>`).

## 4. Technique / Code

- [ ] Compléter les balises `<head>` : `<meta name="description">`, Open Graph (`og:title`, `og:description`, `og:image`) pour un bon aperçu quand le lien est partagé (LinkedIn, etc.).
- [ ] Vérifier le responsive mobile plus en profondeur (les 2 media queries à 600px existent déjà, mais à retester sur vrai mobile après ajout de contenu).
- [ ] Nettoyer le style inline dans `index.html` (`style="width: 80%; height: 75vh"` sur l'iframe du CV) → à déplacer dans `style.css`.
- [ ] Accessibilité : vérifier les contrastes, ajouter des `alt` manquants, s'assurer que la nav est utilisable au clavier.
- [ ] Perf : compresser les images (`img/*.png`) si besoin, lazy-loading si on ajoute des images.
- [ ] Remplir le `README.md` (actuellement vide) : présentation rapide du repo, stack utilisée, comment lancer en local.
- [ ] Vérifier que le site est bien servi via GitHub Pages (branche `main`, `index.html` à la racine — a priori déjà bon).

## 5. Bonus (optionnel, à voir plus tard)

- [ ] Version bilingue FR/EN (toggle) si tu vises aussi des recruteurs français.
- [ ] Petit blog/section "veille techno" pour montrer une activité continue (pas obligatoire).
- [ ] Lien vers un CTF profile / TryHackMe / Root-Me si tu en fais, cohérent avec le profil ASR/sécu.
- [ ] Badge "dernière mise à jour" ou changelog discret en bas de page.

---

## Prochaine étape

On code dans cet ordre suggéré :
1. Contenu (section 1) — le plus impactant, rapide à faire.
2. Nettoyage technique de base (section 4) — meta tags, style inline, README.
3. Design (section 3) — dark mode, favicon, cohérence visuelle.
4. Bonus (section 5) si le temps le permet.
