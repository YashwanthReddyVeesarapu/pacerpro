# README

# Soft Delete Functionality in Rails

## Overview

This project implements a basic soft delete functionality for a Ruby on Rails model named `Item`. Soft deletes involve marking records as "deleted" without physically removing them from the database.

## Tasks and Implementation

### Task 1: Model Creation

- Created a new Ruby on Rails model named `Item` with attributes:
  - `name` (string)
  - `deleted_at` (datetime)

### Task 2: Soft Delete Implementation

- Implemented soft delete mechanism using the `deleted_at` attribute.
- Added methods:
  - `soft_delete`: Updates the `deleted_at` attribute with the current timestamp.
  - `restore`: Sets the `deleted_at` attribute to `nil`.

### Task 3: Default Scope

- Included a default scope in the `Item` model to exclude "deleted" items from normal queries.

### Task 4: Testing

- Wrote RSpec tests to ensure the soft delete functionality works correctly.
- Tests include:
  - Soft deleting an item.
  - Restoring a soft-deleted item.
  - Verifying that soft-deleted items are excluded from normal queries.

## Running the Code and Tests

1. **Setup:**

   - Ensure you have Rails and necessary dependencies installed.
   - Run `bundle install` to install required gems.

2. **Database Setup:**

   - Run `rails db:migrate` to apply database migrations.

3. **Running the Code:**

   - Execute `rails console` to interact with the Rails console.
   - Example:
     ```ruby
     item = Item.create(name: 'Example Item')
     item.soft_delete
     ```

4. **Running Tests:**
   - Execute `rspec` to run RSpec tests.
   - Ensure all tests pass.
