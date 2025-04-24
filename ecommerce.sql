
-- Table: brand
CREATE TABLE brand (
    brand_id INT PRIMARY KEY AUTO_INCREMENT,
    brand_name VARCHAR(100) NOT NULL
);

-- Table: product_category
CREATE TABLE product_category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);

-- Table: product
CREATE TABLE product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    base_price DECIMAL(10, 2) NOT NULL,
    brand_id INT,
    category_id INT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- Table: product_image
CREATE TABLE product_image (
    image_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    image_url VARCHAR(255) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Table: color
CREATE TABLE color (
    color_id INT PRIMARY KEY AUTO_INCREMENT,
    color_name VARCHAR(50) NOT NULL
);

-- Table: size_category
CREATE TABLE size_category (
    size_category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);

-- Table: size_option
CREATE TABLE size_option (
    size_id INT PRIMARY KEY AUTO_INCREMENT,
    size_label VARCHAR(50) NOT NULL,
    size_category_id INT,
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- Table: product_item
CREATE TABLE product_item (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    color_id INT,
    size_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id)
);

-- Table: product_variation
CREATE TABLE product_variation (
    variation_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    variation_type VARCHAR(50),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Table: attribute_category
CREATE TABLE attribute_category (
    attribute_category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);

-- Table: attribute_type
CREATE TABLE attribute_type (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(50) NOT NULL
);

-- Table: product_attribute
CREATE TABLE product_attribute (
    attribute_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    attribute_category_id INT,
    type_id INT,
    attribute_name VARCHAR(100),
    attribute_value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id),
    FOREIGN KEY (type_id) REFERENCES attribute_type(type_id)
);
