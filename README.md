# 🛒 E-commerce Database Design

This repository contains the Entity-Relationship Diagram (ERD) and the SQL schema for an e-commerce platform. The goal is to design a scalable, efficient, and well-normalized database suitable for an online store.

## 📦 Overview

The e-commerce database is built to support:
- Product listings with multiple variations (e.g. size, color)
- Product categories and custom attributes
- Brand management
- Stock tracking and product images

## 🧱 Database Structure

### 🔑 Key Tables
| Table | Description |
|-------|-------------|
| `product` | General product info (name, brand, base price) |
| `product_item` | Variants of a product (e.g. size/color combos) |
| `brand` | Stores product brands |
| `product_category` | Groups products into categories |
| `product_image` | Stores product images |
| `color` | Available colors for products |
| `size_category` | Groups size types (e.g. shoe sizes, clothing sizes) |
| `size_option` | Specific sizes like S, M, L, or numeric |
| `product_variation` | Links products with their variations |
| `attribute_category` | Groups custom attributes |
| `attribute_type` | Types of attributes (text, number, boolean) |
| `product_attribute` | Stores custom product attributes |

## 📊 ERD Diagram
_A clear diagram of relationships and keys will be added here (ERD.png)._

## 🧾 SQL Schema
All table definitions and relationships are available in [ecommerce.sql](./ecommerce.sql).

## 🤝 Group Members
Add names and roles of your group members here:
