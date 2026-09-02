<!doctype html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="NexusShop - Modern online shopping experience">
    <title>NexusShop — Modern E-Commerce</title>

```
<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
>

<style>
    /* =========================================================
       RESET & VARIABLES
    ========================================================= */

    :root {
        --primary: #0a2540;
        --primary-light: #163b60;
        --accent: #00c8f8;
        --accent-dark: #00a9d4;
        --success: #22a447;
        --danger: #ff4757;
        --warning: #ffb400;

        --text: #102a43;
        --muted: #6b7c93;
        --border: #e7edf3;
        --surface: #f5f8fb;
        --white: #ffffff;

        --radius-sm: 8px;
        --radius-md: 14px;
        --radius-lg: 22px;

        --shadow-sm: 0 5px 18px rgba(10, 37, 64, .06);
        --shadow-md: 0 12px 35px rgba(10, 37, 64, .10);

        --container: 1200px;
    }

    * {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }

    html {
        scroll-behavior: smooth;
    }

    body {
        font-family: Inter, Arial, sans-serif;
        color: var(--text);
        background: var(--white);
        line-height: 1.6;
    }

    body.no-scroll {
        overflow: hidden;
    }

    button,
    input {
        font: inherit;
    }

    button {
        cursor: pointer;
    }

    a {
        color: inherit;
        text-decoration: none;
    }

    img {
        max-width: 100%;
    }

    .container {
        width: min(100% - 40px, var(--container));
        margin-inline: auto;
    }

    .hidden {
        display: none !important;
    }

    /* =========================================================
       HEADER
    ========================================================= */

    .top-bar {
        background: var(--primary);
        color: white;
        text-align: center;
        padding: 8px 15px;
        font-size: 13px;
    }

    .top-bar strong {
        color: var(--accent);
    }

    header {
        position: sticky;
        top: 0;
        z-index: 1000;
        background: rgba(255,255,255,.96);
        backdrop-filter: blur(12px);
        border-bottom: 1px solid var(--border);
    }

    .header-main {
        min-height: 76px;
        display: flex;
        align-items: center;
        gap: 30px;
    }

    .logo {
        display: flex;
        align-items: center;
        gap: 9px;
        font-family: Poppins, sans-serif;
        font-size: 23px;
        font-weight: 700;
        white-space: nowrap;
    }

    .logo-icon {
        width: 40px;
        height: 40px;
        border-radius: 12px;
        display: grid;
        place-items: center;
        color: var(--primary);
        background: var(--accent);
    }

    .logo span {
        color: var(--accent);
    }

    .desktop-nav {
        flex: 1;
    }

    .desktop-nav ul {
        display: flex;
        justify-content: center;
        gap: 4px;
        list-style: none;
    }

    .desktop-nav a {
        display: flex;
        align-items: center;
        gap: 7px;
        padding: 9px 13px;
        border-radius: 8px;
        font-size: 14px;
        font-weight: 600;
        transition: .2s;
    }

    .desktop-nav a:hover,
    .desktop-nav a.active {
        background: var(--surface);
        color: var(--accent-dark);
    }

    .header-actions {
        display: flex;
        align-items: center;
        gap: 7px;
    }

    .header-btn {
        position: relative;
        width: 42px;
        height: 42px;
        border: 0;
        background: transparent;
        border-radius: 50%;
        color: var(--primary);
        display: grid;
        place-items: center;
        font-size: 17px;
        transition: .2s;
    }

    .header-btn:hover {
        background: var(--surface);
        color: var(--accent-dark);
    }

    .cart-badge {
        position: absolute;
        top: 1px;
        right: 0;
        width: 19px;
        height: 19px;
        border-radius: 50%;
        background: var(--danger);
        color: white;
        font-size: 10px;
        font-weight: 700;
        display: grid;
        place-items: center;
    }

    .mobile-menu-btn {
        display: none;
        border: 0;
        background: transparent;
        font-size: 21px;
        color: var(--primary);
    }

    /* =========================================================
       SEARCH
    ========================================================= */

    .search-area {
        padding-bottom: 14px;
    }

    .search-box {
        display: flex;
        align-items: center;
        gap: 10px;
        max-width: 650px;
        margin: auto;
        background: var(--surface);
        border: 1px solid transparent;
        border-radius: 999px;
        padding: 5px 7px 5px 17px;
        transition: .2s;
    }

    .search-box:focus-within {
        background: white;
        border-color: var(--accent);
        box-shadow: 0 0 0 4px rgba(0,200,248,.10);
    }

    .search-box i {
        color: var(--muted);
    }

    .search-box input {
        width: 100%;
        border: 0;
        outline: 0;
        background: transparent;
        padding: 10px 0;
        color: var(--text);
    }

    .search-box button {
        border: 0;
        background: var(--primary);
        color: white;
        width: 40px;
        height: 40px;
        border-radius: 50%;
    }

    /* =========================================================
       MOBILE MENU
    ========================================================= */

    .mobile-menu {
        display: none;
        background: white;
        border-top: 1px solid var(--border);
        box-shadow: var(--shadow-md);
    }

    .mobile-menu.open {
        display: block;
    }

    .mobile-menu ul {
        list-style: none;
        padding: 10px 0 18px;
    }

    .mobile-menu li a {
        display: block;
        padding: 13px 0;
        border-bottom: 1px solid var(--border);
        font-weight: 600;
    }

    /* =========================================================
       HERO
    ========================================================= */

    .hero {
        min-height: 470px;
        display: flex;
        align-items: center;
        color: white;
        background:
            linear-gradient(90deg, rgba(5,25,45,.88), rgba(5,25,45,.40)),
            url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
            center/cover no-repeat;
    }

    .hero-content {
        max-width: 680px;
        padding: 70px 0;
    }

    .hero-label {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        background: rgba(0,200,248,.16);
        border: 1px solid rgba(0,200,248,.35);
        color: #8eeeff;
        padding: 7px 13px;
        border-radius: 999px;
        font-size: 13px;
        font-weight: 700;
        margin-bottom: 18px;
    }

    .hero h1 {
        font-family: Poppins, sans-serif;
        font-size: clamp(34px, 5vw, 58px);
        line-height: 1.1;
        margin-bottom: 18px;
        letter-spacing: -.03em;
    }

    .hero p {
        color: rgba(255,255,255,.88);
        max-width: 600px;
        margin-bottom: 28px;
        font-size: 16px;
    }

    .hero-buttons {
        display: flex;
        flex-wrap: wrap;
        gap: 12px;
    }

    /* =========================================================
       BUTTONS
    ========================================================= */

    .btn {
        border: 0;
        border-radius: 999px;
        padding: 12px 20px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 9px;
        font-weight: 700;
        transition: .2s;
    }

    .btn-primary {
        background: var(--accent);
        color: #042233;
    }

    .btn-primary:hover {
        background: #37d8ff;
        transform: translateY(-2px);
    }

    .btn-dark {
        background: var(--primary);
        color: white;
    }

    .btn-dark:hover {
        background: var(--primary-light);
    }

    .btn-outline {
        background: transparent;
        color: white;
        border: 1px solid rgba(255,255,255,.35);
    }

    .btn-outline:hover {
        background: white;
        color: var(--primary);
    }

    /* =========================================================
       SECTION
    ========================================================= */

    .section {
        padding: 70px 0;
    }

    .section-header {
        text-align: center;
        margin-bottom: 35px;
    }

    .section-header h2 {
        font-family: Poppins, sans-serif;
        font-size: clamp(25px, 3vw, 34px);
        margin-bottom: 8px;
    }

    .section-header p {
        color: var(--muted);
    }

    /* =========================================================
       CATEGORIES
    ========================================================= */

    .category-grid {
        display: grid;
        grid-template-columns: repeat(6, 1fr);
        gap: 15px;
    }

    .category-card {
        border: 1px solid var(--border);
        border-radius: var(--radius-md);
        padding: 22px 12px;
        text-align: center;
        background: white;
        transition: .2s;
        cursor: pointer;
    }

    .category-card:hover,
    .category-card.selected {
        transform: translateY(-4px);
        border-color: var(--accent);
        box-shadow: var(--shadow-md);
    }

    .category-icon {
        width: 55px;
        height: 55px;
        margin: auto auto 12px;
        border-radius: 50%;
        display: grid;
        place-items: center;
        background: #eafaff;
        color: var(--accent-dark);
        font-size: 22px;
    }

    .category-card h3 {
        font-size: 14px;
        margin-bottom: 4px;
    }

    .category-card p {
        font-size: 12px;
        color: var(--muted);
    }

    /* =========================================================
       PRODUCTS
    ========================================================= */

    .products-toolbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 15px;
        margin-bottom: 22px;
    }

    .result-count {
        color: var(--muted);
        font-size: 14px;
    }

    .sort-select {
        border: 1px solid var(--border);
        border-radius: 9px;
        padding: 9px 12px;
        background: white;
        color: var(--text);
        outline: none;
    }

    .products-grid {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
    }

    .product-card {
        position: relative;
        border: 1px solid var(--border);
        border-radius: var(--radius-md);
        overflow: hidden;
        background: white;
        transition: .25s;
    }

    .product-card:hover {
        transform: translateY(-5px);
        box-shadow: var(--shadow-md);
    }

    .product-image {
        position: relative;
        height: 220px;
        overflow: hidden;
        background: var(--surface);
    }

    .product-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: .35s;
    }

    .product-card:hover .product-image img {
        transform: scale(1.05);
    }

    .product-badge {
        position: absolute;
        top: 12px;
        left: 12px;
        background: var(--success);
        color: white;
        padding: 5px 9px;
        border-radius: 7px;
        font-size: 11px;
        font-weight: 700;
    }

    .product-badge.sale {
        background: var(--danger);
    }

    .wishlist-btn {
        position: absolute;
        top: 10px;
        right: 10px;
        width: 37px;
        height: 37px;
        border: 0;
        border-radius: 50%;
        background: white;
        color: var(--primary);
        box-shadow: 0 4px 12px rgba(0,0,0,.10);
    }

    .wishlist-btn.active {
        color: var(--danger);
    }

    .product-info {
        padding: 16px;
    }

    .product-category {
        font-size: 12px;
        color: var(--muted);
        text-transform: capitalize;
        margin-bottom: 5px;
    }

    .product-title {
        font-size: 15px;
        margin-bottom: 9px;
        min-height: 44px;
    }

    .rating {
        color: #ffb400;
        font-size: 13px;
    }

    .reviews {
        color: var(--muted);
        font-size: 11px;
    }

    .product-price-row {
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 8px;
        margin-top: 13px;
    }

    .price {
        font-weight: 800;
        font-size: 18px;
    }

    .old-price {
        color: var(--muted);
        text-decoration: line-through;
        font-size: 12px;
        margin-left: 4px;
    }

    .add-cart-btn {
        width: 100%;
        margin-top: 14px;
        border: 0;
        border-radius: 9px;
        padding: 10px;
        background: var(--primary);
        color: white;
        font-weight: 700;
        transition: .2s;
    }

    .add-cart-btn:hover {
        background: var(--primary-light);
    }

    .empty-state {
        text-align: center;
        padding: 50px 20px;
        color: var(--muted);
        grid-column: 1/-1;
    }

    .empty-state i {
        font-size: 40px;
        margin-bottom: 15px;
        color: var(--accent);
    }

    /* =========================================================
       DEAL
    ========================================================= */

    .deal {
        display: grid;
        grid-template-columns: 1fr 1fr;
        overflow: hidden;
        border-radius: var(--radius-lg);
        background: var(--surface);
    }

    .deal-image {
        min-height: 380px;
    }

    .deal-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .deal-content {
        display: flex;
        flex-direction: column;
        justify-content: center;
        padding: 45px;
    }

    .deal-label {
        color: var(--danger);
        font-weight: 800;
        font-size: 13px;
        text-transform: uppercase;
        margin-bottom: 8px;
    }

    .deal-content h2 {
        font-family: Poppins, sans-serif;
        font-size: 32px;
        margin-bottom: 10px;
    }

    .deal-content p {
        color: var(--muted);
    }

    .timer {
        display: flex;
        gap: 9px;
        margin: 25px 0;
        flex-wrap: wrap;
    }

    .time-box {
        min-width: 68px;
        padding: 11px 8px;
        border-radius: 10px;
        background: var(--primary);
        color: white;
        text-align: center;
    }

    .time-number {
        font-size: 20px;
        font-weight: 800;
    }

    .time-label {
        font-size: 10px;
        opacity: .7;
        text-transform: uppercase;
    }

    .deal-price {
        font-size: 30px;
        font-weight: 800;
        margin-bottom: 18px;
    }

    /* =========================================================
       FEATURES
    ========================================================= */

    .features {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 20px;
        padding: 35px 0;
        border-top: 1px solid var(--border);
        border-bottom: 1px solid var(--border);
    }

    .feature {
        display: flex;
        align-items: center;
        gap: 13px;
    }

    .feature-icon {
        width: 45px;
        height: 45px;
        flex-shrink: 0;
        border-radius: 10px;
        display: grid;
        place-items: center;
        color: var(--accent-dark);
        background: #eafaff;
    }

    .feature h4 {
        font-size: 14px;
    }

    .feature p {
        color: var(--muted);
        font-size: 12px;
    }

    /* =========================================================
       TESTIMONIALS
    ========================================================= */

    .testimonial-grid {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 20px;
    }

    .testimonial {
        padding: 24px;
        border: 1px solid var(--border);
        border-radius: var(--radius-md);
    }

    .testimonial-stars {
        color: var(--warning);
        margin-bottom: 12px;
    }

    .testimonial-text {
        color: #425466;
        margin-bottom: 20px;
        font-size: 14px;
    }

    .customer {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .customer img {
        width: 42px;
        height: 42px;
        border-radius: 50%;
        object-fit: cover;
    }

    .customer strong {
        display: block;
        font-size: 14px;
    }

    .customer span {
        color: var(--muted);
        font-size: 12px;
    }

    /* =========================================================
       NEWSLETTER
    ========================================================= */

    .newsletter {
        background: var(--primary);
        color: white;
        border-radius: var(--radius-lg);
        padding: 45px 25px;
        text-align: center;
    }

    .newsletter h2 {
        font-family: Poppins, sans-serif;
        font-size: 28px;
        margin-bottom: 8px;
    }

    .newsletter p {
        color: rgba(255,255,255,.75);
        margin-bottom: 20px;
    }

    .newsletter-form {
        max-width: 500px;
        margin: auto;
        display: flex;
        gap: 8px;
        background: white;
        padding: 5px;
        border-radius: 999px;
    }

    .newsletter-form input {
        flex: 1;
        min-width: 0;
        border: 0;
        outline: 0;
        padding: 11px 14px;
        border-radius: 999px;
    }

    /* =========================================================
       FOOTER
    ========================================================= */

    footer {
        margin-top: 70px;
        padding: 55px 0 20px;
        background: #f7f9fb;
    }

    .footer-grid {
        display: grid;
        grid-template-columns: 1.5fr repeat(3, 1fr);
        gap: 40px;
    }

    .footer-brand p {
        color: var(--muted);
        margin-top: 12px;
        max-width: 330px;
        font-size: 14px;
    }

    .footer-column h4 {
        margin-bottom: 14px;
    }

    .footer-column a {
        display: block;
        color: var(--muted);
        font-size: 14px;
        margin: 8px 0;
    }

    .footer-column a:hover {
        color: var(--accent-dark);
    }

    .footer-bottom {
        border-top: 1px solid var(--border);
        margin-top: 40px;
        padding-top: 20px;
        text-align: center;
        color: var(--muted);
        font-size: 13px;
    }

    /* =========================================================
       CART DRAWER
    ========================================================= */

    .overlay {
        position: fixed;
        inset: 0;
        background: rgba(0,0,0,.45);
        z-index: 1500;
        opacity: 0;
        visibility: hidden;
        transition: .25s;
    }

    .overlay.show {
        opacity: 1;
        visibility: visible;
    }

    .cart-drawer {
        position: fixed;
        z-index: 1600;
        top: 0;
        right: 0;
        height: 100%;
        width: min(430px, 100%);
        background: white;
        transform: translateX(100%);
        transition: .3s ease;
        display: flex;
        flex-direction: column;
    }

    .cart-drawer.open {
        transform: translateX(0);
    }

    .cart-header {
        padding: 20px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid var(--border);
    }

    .cart-header h3 {
        font-family: Poppins, sans-serif;
    }

    .close-cart {
        border: 0;
        background: var(--surface);
        width: 38px;
        height: 38px;
        border-radius: 50%;
    }

    .cart-items {
        flex: 1;
        overflow-y: auto;
        padding: 15px;
    }

    .cart-item {
        display: grid;
        grid-template-columns: 65px 1fr auto;
        gap: 12px;
        padding: 12px 0;
        border-bottom: 1px solid var(--border);
    }

    .cart-item img {
        width: 65px;
        height: 65px;
        border-radius: 9px;
        object-fit: cover;
    }

    .cart-item h4 {
        font-size: 13px;
        margin-bottom: 4px;
    }

    .cart-item-price {
        font-size: 13px;
        font-weight: 700;
    }

    .quantity-controls {
        display: flex;
        align-items: center;
        gap: 7px;
        margin-top: 7px;
    }

    .quantity-controls button {
        border: 1px solid var(--border);
        background: white;
        width: 25px;
        height: 25px;
        border-radius: 5px;
    }

    .remove-item {
        border: 0;
        background: transparent;
        color: var(--danger);
    }

    .cart-empty {
        height: 100%;
        display: grid;
        place-items: center;
        text-align: center;
        color: var(--muted);
    }

    .cart-empty i {
        display: block;
        font-size: 45px;
        color: var(--accent);
        margin-bottom: 10px;
    }

    .cart-footer {
        border-top: 1px solid var(--border);
        padding: 20px;
    }

    .cart-total {
        display: flex;
        justify-content: space-between;
        font-size: 18px;
        font-weight: 800;
        margin-bottom: 15px;
    }

    .checkout-btn {
        width: 100%;
    }

    /* =========================================================
       TOAST
    ========================================================= */

    .toast-container {
        position: fixed;
        right: 20px;
        bottom: 20px;
        z-index: 3000;
        display: flex;
        flex-direction: column;
        gap: 10px;
    }

    .toast {
        min-width: 280px;
        max-width: 360px;
        background: var(--primary);
        color: white;
        padding: 13px 16px;
        border-radius: 10px;
        box-shadow: var(--shadow-md);
        animation: toastIn .3s ease;
        font-size: 13px;
    }

    .toast.success {
        border-left: 4px solid var(--success);
    }

    .toast.error {
        border-left: 4px solid var(--danger);
    }

    @keyframes toastIn {
        from {
            transform: translateY(20px);
            opacity: 0;
        }

        to {
            transform: translateY(0);
            opacity: 1;
        }
    }

    /* =========================================================
       RESPONSIVE
    ========================================================= */

    @media (max-width: 1050px) {
        .desktop-nav {
            display: none;
        }

        .mobile-menu-btn {
            display: block;
        }

        .header-main {
            justify-content: space-between;
        }

        .category-grid {
            grid-template-columns: repeat(3, 1fr);
        }

        .products-grid {
            grid-template-columns: repeat(3, 1fr);
        }

        .features {
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media (max-width: 800px) {
        .header-main {
            min-height: 68px;
            gap: 12px;
        }

        .logo {
            font-size: 19px;
        }

        .logo-icon {
            width: 35px;
            height: 35px;
        }

        .header-actions {
            margin-left: auto;
        }

        .hero {
            min-height: 500px;
        }

        .deal {
            grid-template-columns: 1fr;
        }

        .deal-image {
            min-height: 280px;
        }

        .deal-content {
            padding: 30px;
        }

        .testimonial-grid {
            grid-template-columns: 1fr;
        }

        .footer-grid {
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media (max-width: 600px) {
        .container {
            width: min(100% - 28px, var(--container));
        }

        .section {
            padding: 50px 0;
        }

        .top-bar {
            font-size: 11px;
        }

        .search-area {
            padding-bottom: 10px;
        }

        .hero-content {
            padding: 55px 0;
        }

        .hero h1 {
            font-size: 34px;
        }

        .hero-buttons {
            flex-direction: column;
            align-items: stretch;
        }

        .hero-buttons .btn {
            width: 100%;
        }

        .category-grid {
            grid-template-columns: repeat(2, 1fr);
        }

        .products-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 12px;
        }

        .product-image {
            height: 170px;
        }

        .product-info {
            padding: 12px;
        }

        .product-title {
            font-size: 13px;
            min-height: auto;
        }

        .product-price-row {
            display: block;
        }

        .rating {
            margin-top: 5px;
        }

        .products-toolbar {
            align-items: flex-start;
            flex-direction: column;
        }

        .sort-select {
            width: 100%;
        }

        .features {
            grid-template-columns: 1fr;
        }

        .newsletter-form {
            flex-direction: column;
            border-radius: 13px;
            background: transparent;
            padding: 0;
        }

        .newsletter-form input {
            background: white;
            padding: 13px;
        }

        .newsletter-form button {
            width: 100%;
        }

        .footer-grid {
            grid-template-columns: 1fr;
            gap: 28px;
        }

        .toast-container {
            left: 14px;
            right: 14px;
            bottom: 14px;
        }

        .toast {
            min-width: auto;
            width: 100%;
        }
    }
</style>
```

</head>

<body>

```
<!-- TOP BAR -->
<div class="top-bar">
    <strong>Free shipping</strong> on orders over $50 • Easy 30-day returns
</div>

<!-- HEADER -->
<header>
    <div class="container">

        <div class="header-main">

            <button
                class="mobile-menu-btn"
                id="mobileMenuBtn"
                aria-label="Open navigation menu"
                aria-expanded="false"
            >
                <i class="fas fa-bars"></i>
            </button>

            <a href="#" class="logo" aria-label="NexusShop home">
                <div class="logo-icon">
                    <i class="fas fa-bag-shopping"></i>
                </div>
                Nexus<span>Shop</span>
            </a>

            <nav class="desktop-nav" aria-label="Main navigation">
                <ul>
                    <li><a href="#home" class="active">Home</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#products">Products</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#about">About</a></li>
                </ul>
            </nav>

            <div class="header-actions">

                <button class="header-btn" aria-label="Account">
                    <i class="far fa-user"></i>
                </button>

                <button
                    class="header-btn"
                    id="wishlistHeader"
                    aria-label="Wishlist"
                >
                    <i class="far fa-heart"></i>
                </button>

                <button
                    class="header-btn"
                    id="cartButton"
                    aria-label="Shopping cart"
                >
                    <i class="fas fa-shopping-bag"></i>
                    <span class="cart-badge" id="cartCount">0</span>
                </button>

            </div>

        </div>

        <!-- SEARCH -->
        <div class="search-area">
            <div class="search-box">
                <i class="fas fa-search"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    aria-label="Search products"
                >

                <button id="searchButton" aria-label="Search">
                    <i class="fas fa-arrow-right"></i>
                </button>
            </div>
        </div>

    </div>

    <!-- MOBILE MENU -->
    <div class="mobile-menu" id="mobileMenu">
        <div class="container">
            <nav aria-label="Mobile navigation">
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#categories">Categories</a></li>
                    <li><a href="#products">Products</a></li>
                    <li><a href="#deals">Deals</a></li>
                    <li><a href="#about">About</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<main>

    <!-- HERO -->
    <section class="hero" id="home">
        <div class="container">
            <div class="hero-content">

                <div class="hero-label">
                    <i class="fas fa-sparkles"></i>
                    New season collection
                </div>

                <h1>
                    Premium products.
                    Better prices.
                </h1>

                <p>
                    Discover carefully selected fashion, technology,
                    accessories and everyday essentials — all in one
                    simple shopping experience.
                </p>

                <div class="hero-buttons">
                    <button class="btn btn-primary" id="shopNow">
                        Shop Now
                        <i class="fas fa-arrow-right"></i>
                    </button>

                    <a href="#deals" class="btn btn-outline">
                        View Today's Deals
                    </a>
                </div>

            </div>
        </div>
    </section>

    <!-- CATEGORIES -->
    <section class="section" id="categories">
        <div class="container">

            <div class="section-header">
                <h2>Shop by Category</h2>
                <p>Find what you need faster.</p>
            </div>

            <div class="category-grid" id="categoriesGrid"></div>

        </div>
    </section>

    <!-- PRODUCTS -->
    <section class="section" id="products" style="background:#f9fbfd;">
        <div class="container">

            <div class="section-header">
                <h2>Popular Products</h2>
                <p>Our customers' current favorites.</p>
            </div>

            <div class="products-toolbar">

                <div class="result-count" id="resultCount">
                    Showing all products
                </div>

                <select class="sort-select" id="sortSelect" aria-label="Sort products">
                    <option value="default">Sort: Recommended</option>
                    <option value="low">Price: Low to High</option>
                    <option value="high">Price: High to Low</option>
                    <option value="rating">Highest Rated</option>
                    <option value="name">Name: A-Z</option>
                </select>

            </div>

            <div class="products-grid" id="productsGrid"></div>

        </div>
    </section>

    <!-- DEAL -->
    <section class="section" id="deals">
        <div class="container">

            <div class="section-header">
                <h2>Flash Sale</h2>
                <p>Grab this deal before the timer runs out.</p>
            </div>

            <div class="deal">

                <div class="deal-image">
                    <img
                        src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85"
                        alt="MacBook laptop"
                    >
                </div>

                <div class="deal-content">

                    <div class="deal-label">
                        Limited time offer
                    </div>

                    <h2>MacBook Air M2</h2>

                    <p>
                        Thin, powerful and designed for everyday work,
                        creativity and entertainment.
                    </p>

                    <div class="timer">

                        <div class="time-box">
                            <div class="time-number" id="days">00</div>
                            <div class="time-label">Days</div>
                        </div>

                        <div class="time-box">
                            <div class="time-number" id="hours">00</div>
                            <div class="time-label">Hours</div>
                        </div>

                        <div class="time-box">
                            <div class="time-number" id="minutes">00</div>
                            <div class="time-label">Minutes</div>
                        </div>

                        <div class="time-box">
                            <div class="time-number" id="seconds">00</div>
                            <div class="time-label">Seconds</div>
                        </div>

                    </div>

                    <div class="deal-price">
                        $999
                        <span class="old-price">$1,199</span>
                    </div>

                    <button class="btn btn-primary" id="buyDeal">
                        Add Deal to Cart
                        <i class="fas fa-cart-plus"></i>
                    </button>

                </div>

            </div>

        </div>
    </section>

    <!-- FEATURES -->
    <section>
        <div class="container">

            <div class="features">

                <div class="feature">
                    <div class="feature-icon">
                        <i class="fas fa-truck"></i>
                    </div>
                    <div>
                        <h4>Free Shipping</h4>
                        <p>On orders over $50</p>
                    </div>
                </div>

                <div class="feature">
                    <div class="feature-icon">
                        <i class="fas fa-rotate-left"></i>
                    </div>
                    <div>
                        <h4>Easy Returns</h4>
                        <p>30-day return policy</p>
                    </div>
                </div>

                <div class="feature">
                    <div class="feature-icon">
                        <i class="fas fa-shield-halved"></i>
                    </div>
                    <div>
                        <h4>Secure Payment</h4>
                        <p>100% protected checkout</p>
                    </div>
                </div>

                <div class="feature">
                    <div class="feature-icon">
                        <i class="fas fa-headset"></i>
                    </div>
                    <div>
                        <h4>24/7 Support</h4>
                        <p>We're here to help</p>
                    </div>
                </div>

            </div>

        </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section" id="about">
        <div class="container">

            <div class="section-header">
                <h2>What Customers Say</h2>
                <p>Real feedback from our shoppers.</p>
            </div>

            <div class="testimonial-grid">

                <article class="testimonial">
                    <div class="testimonial-stars">★★★★★</div>

                    <p class="testimonial-text">
                        "Fast shipping and excellent customer support.
                        Everything arrived exactly as described."
                    </p>

                    <div class="customer">
                        <img
                            src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                            alt="Ava Martin"
                        >

                        <div>
                            <strong>Ava Martin</strong>
                            <span>Verified buyer</span>
                        </div>
                    </div>
                </article>

                <article class="testimonial">
                    <div class="testimonial-stars">★★★★★</div>

                    <p class="testimonial-text">
                        "The website is easy to use and checkout was
                        incredibly smooth. I'll definitely shop again."
                    </p>

                    <div class="customer">
                        <img
                            src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                            alt="Michael Lee"
                        >

                        <div>
                            <strong>Michael Lee</strong>
                            <span>Frequent buyer</span>
                        </div>
                    </div>
                </article>

                <article class="testimonial">
                    <div class="testimonial-stars">★★★★☆</div>

                    <p class="testimonial-text">
                        "Great selection, good prices and a very pleasant
                        shopping experience."
                    </p>

                    <div class="customer">
                        <img
                            src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                            alt="Sophia Williams"
                        >

                        <div>
                            <strong>Sophia Williams</strong>
                            <span>Verified buyer</span>
                        </div>
                    </div>
                </article>

            </div>

        </div>
    </section>

    <!-- NEWSLETTER -->
    <section class="section">
        <div class="container">

            <div class="newsletter">

                <h2>Stay in the loop</h2>

                <p>
                    Get new arrivals, special offers and exclusive discounts.
                </p>

                <form class="newsletter-form" id="newsletterForm">

                    <input
                        type="email"
                        id="newsletterEmail"
                        placeholder="Enter your email"
                        aria-label="Email address"
                        required
                    >

                    <button class="btn btn-primary" type="submit">
                        Subscribe
                    </button>

                </form>

            </div>

        </div>
    </section>

</main>

<!-- FOOTER -->
<footer>

    <div class="container">

        <div class="footer-grid">

            <div class="footer-brand">

                <a href="#" class="logo">
                    <div class="logo-icon">
                        <i class="fas fa-bag-shopping"></i>
                    </div>
                    Nexus<span>Shop</span>
                </a>

                <p>
                    A simple, modern and user-friendly shopping experience
                    built for today's online shoppers.
                </p>

            </div>

            <div class="footer-column">
                <h4>Shop</h4>
                <a href="#products">All Products</a>
                <a href="#categories">Categories</a>
                <a href="#deals">Deals</a>
                <a href="#">New Arrivals</a>
            </div>

            <div class="footer-column">
                <h4>Support</h4>
                <a href="#">Help Center</a>
                <a href="#">Shipping</a>
                <a href="#">Returns</a>
                <a href="#">Contact Us</a>
            </div>

            <div class="footer-column">
                <h4>Company</h4>
                <a href="#about">About Us</a>
                <a href="#">Careers</a>
                <a href="#">Privacy Policy</a>
                <a href="#">Terms</a>
            </div>

        </div>

        <div class="footer-bottom">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>

<!-- CART OVERLAY -->
<div class="overlay" id="overlay"></div>

<!-- CART DRAWER -->
<aside class="cart-drawer" id="cartDrawer" aria-label="Shopping cart">

    <div class="cart-header">
        <h3>Your Cart</h3>

        <button class="close-cart" id="closeCart" aria-label="Close cart">
            <i class="fas fa-xmark"></i>
        </button>
    </div>

    <div class="cart-items" id="cartItems"></div>

    <div class="cart-footer">

        <div class="cart-total">
            <span>Total</span>
            <span id="cartTotal">$0.00</span>
        </div>

        <button class="btn btn-dark checkout-btn" id="checkoutButton">
            Proceed to Checkout
            <i class="fas fa-arrow-right"></i>
        </button>

    </div>

</aside>

<!-- TOAST -->
<div class="toast-container" id="toastContainer"></div>

<script>
    /* =========================================================
       PRODUCT DATA
    ========================================================= */

    const PRODUCTS = [
        {
            id: 1,
            title: "iPhone 14 Pro Max",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "New",
            category: "Smartphones",
            icon: "fa-mobile-screen-button",
            img: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 2,
            title: 'MacBook Pro 14"',
            price: 1999,
            rating: 4,
            reviews: 86,
            category: "Laptops",
            icon: "fa-laptop",
            img: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 3,
            title: "Apple Watch Series 8",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "-25%",
            sale: true,
            category: "Accessories",
            icon: "fa-clock",
            img: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 4,
            title: "Nike Air Max 270",
            price: 150,
            rating: 4,
            reviews: 53,
            category: "Footwear",
            icon: "fa-shoe-prints",
            img: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 5,
            title: "Sony A7 IV Camera",
            price: 2499,
            rating: 5,
            reviews: 42,
            category: "Gadgets",
            icon: "fa-camera",
            img: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 6,
            title: "Chanel No. 5",
            price: 120,
            rating: 5,
            reviews: 189,
            category: "Beauty",
            icon: "fa-spray-can-sparkles",
            img: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 7,
            title: "Travel Backpack",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            badge: "Sale",
            sale: true,
            category: "Accessories",
            icon: "fa-bag-shopping",
            img: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },
        {
            id: 8,
            title: "Sony WH-1000XM5",
            price: 399,
            rating: 5,
            reviews: 156,
            category: "Gadgets",
            icon: "fa-headphones",
            img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=700&q=85"
        }
    ];

    const CATEGORIES = [
        {
            name: "Smartphones",
            icon: "fa-mobile-screen-button"
        },
        {
            name: "Laptops",
            icon: "fa-laptop"
        },
        {
            name: "Clothing",
            icon: "fa-shirt"
        },
        {
            name: "Gadgets",
            icon: "fa-headphones"
        },
        {
            name: "Footwear",
            icon: "fa-shoe-prints"
        },
        {
            name: "Accessories",
            icon: "fa-watch"
        }
    ];

    /* =========================================================
       STATE
    ========================================================= */

    let cart = [];
    let wishlist = new Set();
    let activeCategory = "all";

    /* =========================================================
       ELEMENTS
    ========================================================= */

    const productsGrid = document.getElementById("productsGrid");
    const categoriesGrid = document.getElementById("categoriesGrid");
    const searchInput = document.getElementById("searchInput");
    const sortSelect = document.getElementById("sortSelect");
    const resultCount = document.getElementById("resultCount");

    const cartButton = document.getElementById("cartButton");
    const cartDrawer = document.getElementById("cartDrawer");
    const closeCart = document.getElementById("closeCart");
    const overlay = document.getElementById("overlay");

    const cartItems = document.getElementById("cartItems");
    const cartCount = document.getElementById("cartCount");
    const cartTotal = document.getElementById("cartTotal");

    const mobileMenuBtn = document.getElementById("mobileMenuBtn");
    const mobileMenu = document.getElementById("mobileMenu");

    /* =========================================================
       HELPERS
    ========================================================= */

    function escapeHTML(value) {
        return String(value).replace(/[&<>"']/g, char => ({
            "&": "&amp;",
            "<": "&lt;",
            ">": "&gt;",
            '"': "&quot;",
            "'": "&#039;"
        })[char]);
    }

    function formatPrice(price) {
        return "$" + price.toLocaleString("en-US", {
            minimumFractionDigits: 2,
            maximumFractionDigits: 2
        });
    }

    function showToast(message, type = "success") {
        const toast = document.createElement("div");

        toast.className = `toast ${type}`;
        toast.textContent = message;

        document.getElementById("toastContainer").appendChild(toast);

        setTimeout(() => {
            toast.remove();
        }, 3000);
    }

    /* =========================================================
       CATEGORIES
    ========================================================= */

    function renderCategories() {

        categoriesGrid.innerHTML = "";

        CATEGORIES.forEach(category => {

            const card = document.createElement("button");

            card.className = "category-card";
            card.type = "button";

            card.innerHTML = `
                <div class="category-icon">
                    <i class="fas ${category.icon}"></i>
                </div>

                <h3>${escapeHTML(category.name)}</h3>

                <p>
                    Browse products
                </p>
            `;

            card.addEventListener("click", () => {

                activeCategory =
                    activeCategory === category.name
                        ? "all"
                        : category.name;

                document.querySelectorAll(".category-card")
                    .forEach(item => item.classList.remove("selected"));

                if (activeCategory !== "all") {
                    card.classList.add("selected");
                }

                renderProducts();

                document.getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });
            });

            categoriesGrid.appendChild(card);
        });
    }

    /* =========================================================
       PRODUCT FILTERING
    ========================================================= */

    function getFilteredProducts() {

        const query = searchInput.value
            .trim()
            .toLowerCase();

        let products = PRODUCTS.filter(product => {

            const matchesSearch =
                !query ||
                product.title.toLowerCase().includes(query) ||
                product.category.toLowerCase().includes(query);

            const matchesCategory =
                activeCategory === "all" ||
                product.category === activeCategory;

            return matchesSearch && matchesCategory;
        });

        const sort = sortSelect.value;

        if (sort === "low") {
            products.sort((a, b) => a.price - b.price);
        }

        if (sort === "high") {
            products.sort((a, b) => b.price - a.price);
        }

        if (sort === "rating") {
            products.sort((a, b) => b.rating - a.rating);
        }

        if (sort === "name") {
            products.sort((a, b) =>
                a.title.localeCompare(b.title)
            );
        }

        return products;
    }

    /* =========================================================
       PRODUCT RENDER
    ========================================================= */

    function renderProducts() {

        const products = getFilteredProducts();

        resultCount.textContent =
            products.length === PRODUCTS.length
                ? `Showing all ${products.length} products`
                : `${products.length} product${products.length === 1 ? "" : "s"} found`;

        productsGrid.innerHTML = "";

        if (!products.length) {

            productsGrid.innerHTML = `
                <div class="empty-state">
                    <i class="fas fa-box-open"></i>
                    <h3>No products found</h3>
                    <p>
                        Try another search or choose a different category.
                    </p>
                </div>
            `;

            return;
        }

        products.forEach(product => {

            const card = document.createElement("article");

            card.className = "product-card";

            const isWishlisted =
                wishlist.has(product.id);

            card.innerHTML = `

                <div class="product-image">

                    <img
                        src="${product.img}"
                        alt="${escapeHTML(product.title)}"
                        loading="lazy"
                    >

                    ${
                        product.badge
                        ? `
                            <span class="product-badge ${product.sale ? "sale" : ""}">
                                ${escapeHTML(product.badge)}
                            </span>
                        `
                        : ""
                    }

                    <button
                        class="wishlist-btn ${isWishlisted ? "active" : ""}"
                        data-wishlist="${product.id}"
                        aria-label="Add ${escapeHTML(product.title)} to wishlist"
                    >
                        <i class="${isWishlisted ? "fas" : "far"} fa-heart"></i>
                    </button>

                </div>

                <div class="product-info">

                    <div class="product-category">
                        ${escapeHTML(product.category)}
                    </div>

                    <h3 class="product-title">
                        ${escapeHTML(product.title)}
                    </h3>

                    <div class="rating">
                        ${"★".repeat(product.rating)}
                        <span class="reviews">
                            (${product.reviews})
                        </span>
                    </div>

                    <div class="product-price-row">

                        <div>
                            <span class="price">
                                ${formatPrice(product.price)}
                            </span>

                            ${
                                product.oldPrice
                                ? `
                                    <span class="old-price">
                                        ${formatPrice(product.oldPrice)}
                                    </span>
                                `
                                : ""
                            }
                        </div>

                    </div>

                    <button
                        class="add-cart-btn"
                        data-product="${product.id}"
                    >
                        <i class="fas fa-cart-plus"></i>
                        Add to Cart
                    </button>

                </div>
            `;

            productsGrid.appendChild(card);
        });

        /* Wishlist buttons */

        productsGrid
            .querySelectorAll("[data-wishlist]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    const id =
                        Number(button.dataset.wishlist);

                    toggleWishlist(id);
                });
            });

        /* Add to cart */

        productsGrid
            .querySelectorAll("[data-product]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    const id =
                        Number(button.dataset.product);

                    addToCart(id);
                });
            });
    }

    /* =========================================================
       WISHLIST
    ========================================================= */

    function toggleWishlist(productId) {

        const product =
            PRODUCTS.find(item => item.id === productId);

        if (!product) return;

        if (wishlist.has(productId)) {

            wishlist.delete(productId);

            showToast(
                `${product.title} removed from wishlist.`
            );

        } else {

            wishlist.add(productId);

            showToast(
                `${product.title} added to wishlist.`
            );
        }

        renderProducts();
    }

    /* =========================================================
       CART
    ========================================================= */

    function addToCart(productId, quantity = 1) {

        const product =
            PRODUCTS.find(item => item.id === productId);

        if (!product) return;

        const existing =
            cart.find(item => item.id === productId);

        if (existing) {
            existing.quantity += quantity;
        } else {
            cart.push({
                id: productId,
                quantity
            });
        }

        updateCart();

        showToast(
            `${product.title} added to your cart.`
        );
    }

    function changeQuantity(productId, amount) {

        const item =
            cart.find(product => product.id === productId);

        if (!item) return;

        item.quantity += amount;

        if (item.quantity <= 0) {
            cart = cart.filter(
                product => product.id !== productId
            );
        }

        updateCart();
    }

    function removeFromCart(productId) {

        const product =
            PRODUCTS.find(item => item.id === productId);

        cart = cart.filter(
            item => item.id !== productId
        );

        updateCart();

        if (product) {
            showToast(
                `${product.title} removed from cart.`
            );
        }
    }

    function updateCart() {

        const totalItems =
            cart.reduce(
                (sum, item) => sum + item.quantity,
                0
            );

        cartCount.textContent = totalItems;

        cartItems.innerHTML = "";

        if (!cart.length) {

            cartItems.innerHTML = `
                <div class="cart-empty">
                    <div>
                        <i class="fas fa-bag-shopping"></i>
                        <h3>Your cart is empty</h3>
                        <p>Add something you love!</p>
                    </div>
                </div>
            `;

            cartTotal.textContent = "$0.00";

            return;
        }

        let total = 0;

        cart.forEach(item => {

            const product =
                PRODUCTS.find(
                    product => product.id === item.id
                );

            if (!product) return;

            total += product.price * item.quantity;

            const element =
                document.createElement("div");

            element.className = "cart-item";

            element.innerHTML = `

                <img
                    src="${product.img}"
                    alt="${escapeHTML(product.title)}"
                >

                <div>

                    <h4>
                        ${escapeHTML(product.title)}
                    </h4>

                    <div class="cart-item-price">
                        ${formatPrice(product.price)}
                    </div>

                    <div class="quantity-controls">

                        <button
                            data-minus="${product.id}"
                            aria-label="Decrease quantity"
                        >
                            −
                        </button>

                        <span>
                            ${item.quantity}
                        </span>

                        <button
                            data-plus="${product.id}"
                            aria-label="Increase quantity"
                        >
                            +
                        </button>

                    </div>

                </div>

                <button
                    class="remove-item"
                    data-remove="${product.id}"
                    aria-label="Remove item"
                >
                    <i class="fas fa-trash"></i>
                </button>
            `;

            cartItems.appendChild(element);
        });

        cartTotal.textContent =
            formatPrice(total);

        cartItems
            .querySelectorAll("[data-minus]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    changeQuantity(
                        Number(button.dataset.minus),
                        -1
                    );
                });
            });

        cartItems
            .querySelectorAll("[data-plus]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    changeQuantity(
                        Number(button.dataset.plus),
                        1
                    );
                });
            });

        cartItems
            .querySelectorAll("[data-remove]")
            .forEach(button => {

                button.addEventListener("click", () => {

                    removeFromCart(
                        Number(button.dataset.remove)
                    );
                });
            });
    }

    /* =========================================================
       CART DRAWER
    ========================================================= */

    function openCart() {

        cartDrawer.classList.add("open");
        overlay.classList.add("show");
        document.body.classList.add("no-scroll");
    }

    function closeCartDrawer() {

        cartDrawer.classList.remove("open");
        overlay.classList.remove("show");
        document.body.classList.remove("no-scroll");
    }

    cartButton.addEventListener("click", openCart);

    closeCart.addEventListener(
        "click",
        closeCartDrawer
    );

    overlay.addEventListener(
        "click",
        closeCartDrawer
    );

    /* =========================================================
       SEARCH
    ========================================================= */

    searchInput.addEventListener(
        "input",
        renderProducts
    );

    document.getElementById("searchButton")
        .addEventListener("click", () => {

            document.getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

            renderProducts();
        });

    searchInput.addEventListener("keydown", event => {

        if (event.key === "Enter") {

            document.getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });
        }
    });

    sortSelect.addEventListener(
        "change",
        renderProducts
    );

    /* =========================================================
       SHOP NOW
    ========================================================= */

    document.getElementById("shopNow")
        .addEventListener("click", () => {

            document.getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });
        });

    /* =========================================================
       MOBILE MENU
    ========================================================= */

    mobileMenuBtn.addEventListener("click", () => {

        const isOpen =
            mobileMenu.classList.toggle("open");

        mobileMenuBtn.setAttribute(
            "aria-expanded",
            isOpen
        );

        mobileMenuBtn.innerHTML = isOpen
            ? '<i class="fas fa-xmark"></i>'
            : '<i class="fas fa-bars"></i>';
    });

    mobileMenu
        .querySelectorAll("a")
        .forEach(link => {

            link.addEventListener("click", () => {

                mobileMenu.classList.remove("open");

                mobileMenuBtn.setAttribute(
                    "aria-expanded",
                    "false"
                );

                mobileMenuBtn.innerHTML =
                    '<i class="fas fa-bars"></i>';
            });
        });

    /* =========================================================
       FLASH SALE
    ========================================================= */

    const saleEnd =
        Date.now() + (24 * 60 * 60 * 1000);

    function updateCountdown() {

        const difference =
            saleEnd - Date.now();

        if (difference <= 0) {

            document.getElementById("days").textContent = "00";
            document.getElementById("hours").textContent = "00";
            document.getElementById("minutes").textContent = "00";
            document.getElementById("seconds").textContent = "00";

            return;
        }

        const days =
            Math.floor(
                difference / (1000 * 60 * 60 * 24)
            );

        const hours =
            Math.floor(
                (difference / (1000 * 60 * 60)) % 24
            );

        const minutes =
            Math.floor(
                (difference / (1000 * 60)) % 60
            );

        const seconds =
            Math.floor(
                (difference / 1000) % 60
            );

        document.getElementById("days")
            .textContent =
            String(days).padStart(2, "0");

        document.getElementById("hours")
            .textContent =
            String(hours).padStart(2, "0");

        document.getElementById("minutes")
            .textContent =
            String(minutes).padStart(2, "0");

        document.getElementById("seconds")
            .textContent =
            String(seconds).padStart(2, "0");
    }

    updateCountdown();

    setInterval(
        updateCountdown,
        1000
    );

    /* =========================================================
       FLASH DEAL
    ========================================================= */

    document.getElementById("buyDeal")
        .addEventListener("click", () => {

            addToCart(2);

            openCart();
        });

    /* =========================================================
       NEWSLETTER
    ========================================================= */

    document.getElementById("newsletterForm")
        .addEventListener("submit", event => {

            event.preventDefault();

            const email =
                document.getElementById(
                    "newsletterEmail"
                ).value.trim();

            if (!email) {
                showToast(
                    "Please enter your email address.",
                    "error"
                );
                return;
            }

            showToast(
                "You're subscribed! Welcome to NexusShop."
            );

            event.target.reset();
        });

    /* =========================================================
       CHECKOUT
    ========================================================= */

    document.getElementById("checkoutButton")
        .addEventListener("click", () => {

            if (!cart.length) {

                showToast(
                    "Your cart is empty.",
                    "error"
                );

                return;
            }

            showToast(
                "Checkout is ready to be connected to your payment system."
            );
        });

    /* =========================================================
       YEAR
    ========================================================= */

    document.getElementById("year")
        .textContent =
        new Date().getFullYear();

    /* =========================================================
       INITIALIZE
    ========================================================= */

    renderCategories();
    renderProducts();
    updateCart();
</script>
```

</body>
</html>
