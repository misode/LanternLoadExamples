# Lantern Load Examples
A collection of example datapacks on how to use the [Lantern Load](https://github.com/LanternMC/Load) convention.

## 1. Basic datapack with a load score
> **[Athena](./Athena)**

All the datapack does is include the load core and set its own load status score. This score can then be detected by other datapacks. It doesn't support versioning and doesn't have dependencies.

This is a good pick if your datapack doesn't have any dependencies and only one version will ever be loaded at once.

## 2. Basic datapack that depends on another datapack
> **[Odysseus](./Odysseus)**

This datapack depends on [Athena](./Athena), and thus it needs to check if the `athena load.status` score is set. But secondly, it also needs to make sure that Athena loads before Odysseus, otherwise the score won't be set even though the datapack is loaded.

This is a good pick if your datapack has one or more dependencies, but itself isn't a datapack that will need versioning.

## 3. Datapack that supports multiple versions
> **[Leto](./Leto)**

This datapack introduces the concept of including the version in its implementation function. This allows future changes to be made, and if multiple versions are loaded, only the latest version will actually run its implementation.

This is a good pick if your datapack is expected to change in the future, and other datapacks will include this bundled.

## 4. Datapack with a major and minor version
> **[Hera](./Hera)**

This datapack is very similar to [Leto](./Leto), except that it has two version numbers. The major version would be incremented when breaking changes are made requiring dependents to make changes. The minor version would only be incremented when a change is made that is compatible.

## 5. Versioned datapack that depends on another versioned datapack
> **[Demeter](./Demeter)**

This datapack itself is versioned, and it has [Hera](./Hera) as a dependency. Here you have the choice how you check the major and minor version. In most cases you want to check that the major version is equal, and the minor version can be equal or higher.

## 6. Versioned datapack with a public API
> **[Zeus](./Zeus)**

Just like [Hera](./Hera), this has a major and minor version. On top of that, it provides a public API in the form of a function tag. This function tag only includes the major version, so dependents don't need to change when there is a minor version bump.

## 6. Updating a versioned datapack with a public API
> **[Zeus v1.3](./Zeus-v1.3)**

This is a copy of [Zeus](./Zeus), but with the version updated to v1.3. It changes the implementation of the API, however, no breaking changes were made and the public API remains the same.

Exactly for this reason it's important only the latest version of a library is enabled and running. Otherwise the API tag would be called twice.

## 7. Versioned datapack using another public API
> **[Chronus](./Chronus)**

Just like [Demeter](./Demeter), this is a versioned datapack that depends on another versioned datapack. In this case it uses the public API of [Zeus](./Zeus). This datapack doesn't care whether v1.2 is present or v1.3 is preset. It only requires a major version of 1 and a minor version at least 2.
