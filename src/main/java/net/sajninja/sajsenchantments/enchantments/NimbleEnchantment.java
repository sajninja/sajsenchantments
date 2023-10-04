package net.sajninja.sajsenchantments.enchantments;

import com.google.common.collect.ImmutableMultimap;
import net.minecraft.world.entity.EquipmentSlot;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.MobType;
import net.minecraft.world.entity.ai.attributes.Attribute;
import net.minecraft.world.entity.ai.attributes.AttributeModifier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.*;
import net.minecraft.world.item.enchantment.DamageEnchantment;
import net.minecraft.world.item.enchantment.Enchantment;
import net.minecraft.world.item.enchantment.EnchantmentCategory;
import net.minecraft.world.item.enchantment.Enchantments;

import java.util.UUID;

public class NimbleEnchantment extends Enchantment {
    protected NimbleEnchantment(Rarity rarity, EnchantmentCategory category, EquipmentSlot... slot) {
//        float attackSpeedModifier = 0.1f * level;
//        user.getAttribute(Attributes.ATTACK_SPEED)
//                .addTransientModifier(new AttributeModifier(UUID.randomUUID(),
//                        "Attack Speed Modifier", attackSpeedModifier,
//                        AttributeModifier.Operation.ADDITION));
        super(rarity, category, slot);
    }

    @Override
    protected boolean checkCompatibility(Enchantment enchantment) {
        if (enchantment instanceof ModDamageEnchantment || enchantment instanceof DamageEnchantment) {
            return false;
        }
        return super.checkCompatibility(enchantment);
    }

    public boolean canEnchant(ItemStack itemStack) {
        return itemStack.getItem() instanceof AxeItem ? true : super.canEnchant(itemStack);
    }

    @Override
    public int getMaxLevel() {
        return 4;
    }

    public float getSpeedBonus(int i) {
        return 0.0f;
    }

//    public void onTargetDamaged(ItemStack stack, LivingEntity user, LivingEntity target, int level) {
//        // Increase the user's attack speed when attacking a target
//        float attackSpeedModifier = 0.1f * level; // Adjust the modifier as needed
//        user.getAttribute(EntityAttributes.GENERIC_ATTACK_SPEED)
//                .addPersistentModifier(new EntityAttributeModifier(UUID.randomUUID(),
//                        "Attack Speed Modifier", attackSpeedModifier,
//                        EntityAttributeModifier.Operation.ADDITION));
//    }
}