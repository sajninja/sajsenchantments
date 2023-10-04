package net.sajninja.sajsenchantments.enchantments;

import net.minecraft.world.entity.EquipmentSlot;
import net.minecraft.world.item.enchantment.Enchantment;
import net.minecraft.world.item.enchantment.EnchantmentCategory;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;
import net.sajninja.sajsenchantments.SajsEnchantments;

public class ModEnchantments {
    public static final DeferredRegister<Enchantment> ENCHANTMENTS =
            DeferredRegister.create(ForgeRegistries.ENCHANTMENTS, SajsEnchantments.MODID);

    public static RegistryObject<Enchantment> DEVOTION =
            ENCHANTMENTS.register("devotion",
                    () -> new DevotionEnchantment(Enchantment.Rarity.VERY_RARE, EquipmentSlot.values()));

    public static RegistryObject<Enchantment> INDOMITABLE =
            ENCHANTMENTS.register("indomitable",
                    () -> new InvulnerabilityEnchantment(Enchantment.Rarity.VERY_RARE,
                            EnchantmentCategory.ARMOR_CHEST, EquipmentSlot.CHEST));

    public static RegistryObject<Enchantment> REPEATING =
            ENCHANTMENTS.register("repeating",
                    () -> new RepeatingEnchantment(Enchantment.Rarity.RARE,
                            EnchantmentCategory.CROSSBOW, EquipmentSlot.MAINHAND));

    public static RegistryObject<Enchantment> OBSCURITY_MARK =
            ENCHANTMENTS.register("obscurity_mark",
                    () -> new ModDamageEnchantment(Enchantment.Rarity.UNCOMMON, 0,
                            EnchantmentCategory.WEAPON, EquipmentSlot.MAINHAND));

    public static RegistryObject<Enchantment> ILLAGER_BANE =
            ENCHANTMENTS.register("illager_bane",
                    () -> new ModDamageEnchantment(Enchantment.Rarity.UNCOMMON, 1,
                            EnchantmentCategory.WEAPON, EquipmentSlot.MAINHAND));

    public static RegistryObject<Enchantment> FROST_ASPECT =
            ENCHANTMENTS.register("frost_aspect",
                    () -> new FrostAspectEnchantment(Enchantment.Rarity.RARE,
                            EnchantmentCategory.WEAPON, EquipmentSlot.MAINHAND));

    public static RegistryObject<Enchantment> SOUL_BRAND =
            ENCHANTMENTS.register("soul_brand",
                    () -> new SoulBrandEnchantment(Enchantment.Rarity.VERY_RARE,
                            EnchantmentCategory.WEAPON, EquipmentSlot.MAINHAND));

    public static RegistryObject<Enchantment> HURT_TIME =
            ENCHANTMENTS.register("baring",
                    () -> new HurtTimeEnchantment(Enchantment.Rarity.VERY_RARE,
                            EnchantmentCategory.WEAPON, EquipmentSlot.MAINHAND));

    public static void register(IEventBus eventBus) {
        ENCHANTMENTS.register(eventBus);
    }
}
